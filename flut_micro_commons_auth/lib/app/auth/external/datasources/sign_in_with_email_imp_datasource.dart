import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../flut_micro_commons_auth.dart';
import '../../data/datasources/sign_in_with_email_datasource.dart';

final $SignInWithEmailImpDatasource = Bind.singleton(
  (i) => SignInWithEmailImpDatasource(),
  export: true,
);

class SignInWithEmailImpDatasource implements SignInWithEmailDatasource {
  @override
  Future<CurrentUserEntity> call(String email, String password) async {
    return CurrentUserEntity.fromUserFirebase(
      await _signInWithEmail(email, password),
    );
  }

  Future<User> _signInWithEmail(
    String? email,
    String? password,
  ) async {
    if (email == null) {
      throw Exception('E-mail não informado');
    }
    
    if (password == null) {
      throw Exception('Senha não informada');
    }

    try {
      return (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      } else {
        throw Exception('Erro do servidor tente novamente mais tarde');
      }
    }
  }
}
