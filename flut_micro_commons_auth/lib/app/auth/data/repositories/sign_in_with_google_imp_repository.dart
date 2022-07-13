import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/sign_in_with_google_repository.dart';
import '../datasources/sign_in_with_google_datasource.dart';

final $SignInWithGoogleImpRepository = Bind.singleton(
  (i) => SignInWithGoogleImpRepository(i.get()),
  export: true,
);

class SignInWithGoogleImpRepository implements SignInWithGoogleRepository {
  final SignInWithGoogleDatasource _signInWithGoogleDatasource;

  SignInWithGoogleImpRepository(
      SignInWithGoogleDatasource signInWithGoogleDatasource)
      : _signInWithGoogleDatasource = signInWithGoogleDatasource;

  @override
  Future<CurrentUserEntity> call() {
    return _signInWithGoogleDatasource();
  }
}
