import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sign_in_with_google_usecase.dart';
import '../repositories/sign_in_with_google_repository.dart';

final $SignInWithGoogleImpUsecase = Bind.singleton(
  (i) => SignInWithGoogleImpUsecase(i.get()),
  export: true,
);

class SignInWithGoogleImpUsecase implements SignInWithGoogleUsecase {
  final SignInWithGoogleRepository _signInWithGoogleRepository;

  SignInWithGoogleImpUsecase(
      SignInWithGoogleRepository signInWithGoogleRepository)
      : _signInWithGoogleRepository = signInWithGoogleRepository;

  @override
  Future<CurrentUserEntity> call() {
    return _signInWithGoogleRepository();
  }
}
