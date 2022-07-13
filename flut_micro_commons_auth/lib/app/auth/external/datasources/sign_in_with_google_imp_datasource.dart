import 'package:flut_micro_commons_auth/app/auth/domain/models/enums/type_access.dart';
import 'package:flut_micro_commons_auth/app/auth/external/datasources/logged_user_imp_datasource.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_persist_firebase/flut_micro_commons_persist_firebase.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../flut_micro_commons_auth.dart';
import '../../data/datasources/sign_in_with_google_datasource.dart';

final $SignInWithGoogleImpDatasource = Bind.singleton(
  (i) => SignInWithGoogleImpDatasource(),
  export: true,
);

class SignInWithGoogleImpDatasource implements SignInWithGoogleDatasource {
  @override
  Future<CurrentUserEntity> call() async {
    final auth = await _signInWithGoogle();

    final userEntity = await _registerUser(auth);
    final current = CurrentUserEntity.fromUserEntity(userEntity);

    LoggedUserImpDatasource.setCurrentUser(current);
    
    return current;
  }

  Future<User> _signInWithGoogle() async {
    GoogleSignInAccount? googleUser;
    try {
      googleUser = await GoogleSignIn().signIn();
    } catch (e) {
      throw Exception(e);
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final auth = await FirebaseAuth.instance.signInWithCredential(credential);

    if (auth.user == null) {
      throw Exception(
          'Ops.. o servidor esta com uma instabilidade, por favor tente mais tarde');
    }

    return auth.user!;
  }

  Future<UserEntity> _registerUser(User authUser) async {
    final UserEntity user = UserEntity().fromUserFirebase(authUser);

    final collection = FirebaseFirestore.instance.collection(user.tableName);

    final result = await collection
        .where(user.email.key, isEqualTo: user.email.value)
        .get();
    if (result.docs.isEmpty) {
      user.id.value = const Uuid().v4();
      user.typeAccess.value = TypeAccess.google;
      await collection.doc(user.id.value).set(user.persist);
      return user;
    }

    return UserEntity().fromJson(result.docs[0].data());
  }
}
