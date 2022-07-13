import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flut_micro_commons_auth/app/auth/data/datasources/logged_user_datasource.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/verification_phone_number_entity.dart';
import 'package:flut_micro_commons_auth/app/auth/external/datasources/logged_user_imp_datasource.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/entities/user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/sign_in_with_phone_datasource.dart';

final $SignInWithPhoneImpDatasource = Bind.singleton(
  (i) => SignInWithPhoneImpDatasource(i.get()),
  export: true,
);

class SignInWithPhoneImpDatasource implements SignInWithPhoneDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late VerificationPhoneNumberEntity? _verificationPhoneNumber;
  late String? _verificationId;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final LoggedUserDatasource _loggedUserDatasource;

  SignInWithPhoneImpDatasource(this._loggedUserDatasource);

  @override
  Future<void> verifyPhoneNumber(
    VerificationPhoneNumberEntity verificationPhoneNumber,
  ) async {
    _verificationPhoneNumber = verificationPhoneNumber;
    await _auth.verifyPhoneNumber(
      phoneNumber: _verificationPhoneNumber!.phoneNumber,
      timeout: _verificationPhoneNumber!.timeout,
      verificationCompleted: (PhoneAuthCredential credential) async {
        final a = await _auth.signInWithCredential(credential);

        if (a.user != null) {
          _verificationPhoneNumber!.verificationCompleted(
            CurrentUserEntity.fromUserFirebase(a.user!),
          );
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'too-many-requests') {
          _verificationPhoneNumber!.verificationFailed(Exception(
            'Bloqueamos todas as solicitações deste dispositivo devido a atividade incomum. Tente mais tarde.',
          ));
          return;
        }
        _verificationPhoneNumber!.verificationFailed(Exception(e.message));
      },
      codeSent: (String verificationId, int? resendToken) async {
        _verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print(verificationId);
      },
    );
  }

  @override
  Future<void> validateToken(String token) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId!,
      smsCode: token,
    );

    final auth = await _auth.signInWithCredential(credential);

    if (auth.user != null) {
      final userEntity = await _updateUser(auth.user!);
      final current = CurrentUserEntity.fromUserEntity(userEntity);
      LoggedUserImpDatasource.setCurrentUser(current);
      _verificationPhoneNumber!.verificationCompleted(current);
    }
  }

  Future<UserEntity> _updateUser(User authUser) async {
    final currentUser = await _loggedUserDatasource();
    final UserEntity user = UserEntity()..fromUserFirebase(authUser);

    final collection = FirebaseFirestore.instance.collection(user.tableName);

    final result = await collection
        .where(user.email.key, isEqualTo: currentUser?.email.value)
        .get();

    if (result.docs.isEmpty) {
      throw Exception(
          'Erro ao tentar registrar o telefone, por favor tente mais tarde');
    }

    await collection
        .doc(result.docs[0].id)
        .update({user.phoneNumber.key: user.phoneNumber.value});

    final current = CurrentUserEntity.fromJson(result.docs[0].data());
    current.phoneNumber.value = user.phoneNumber.value;

    return current;
  }
}
