import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/sign_in_with_email_repository.dart';
import '../datasources/sign_in_with_email_datasource.dart';

final $SignInWithEmailImpRepository = Bind.singleton(
  (i) => SignInWithEmailImpRepository(i.get()),
  export: true,
);

class SignInWithEmailImpRepository implements SignInWithEmailRepository {
  final SignInWithEmailDatasource _signInWithEmailDatasource;

  SignInWithEmailImpRepository(
      SignInWithEmailDatasource signInWithEmailDatasource)
      : _signInWithEmailDatasource = signInWithEmailDatasource;

  @override
  Future<CurrentUserEntity> call(String email, String password) {
    return _signInWithEmailDatasource(email, password);
  }
}
