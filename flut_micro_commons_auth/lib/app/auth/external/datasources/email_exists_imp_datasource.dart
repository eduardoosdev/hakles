import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/email_exists_datasource.dart';

final $EmailExistsImpDatasource = Bind.singleton(
  (i) => EmailExistsImpDatasource(),
  export: true,
);

class EmailExistsImpDatasource implements EmailExistsDatasource {
  @override
  Future<void> call(String email) async {
    _signInWithEmail(email);
  }

  _signInWithEmail(String? email) async {
    if (email == null) {
      throw Exception('E-mail não informado');
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: const Uuid().v4(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return;
      } else if (e.code == 'wrong-password') {
        throw Exception('Nenhum usuário encontrado para esse e-mail.');
      } else {
        throw Exception('Erro do servidor tente novamente mais tarde');
      }
    }
  }
}
