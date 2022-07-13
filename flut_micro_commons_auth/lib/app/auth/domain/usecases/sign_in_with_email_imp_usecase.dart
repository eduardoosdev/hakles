import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sign_in_with_email_usecase.dart';
import '../repositories/sign_in_with_email_repository.dart';

final $SignInWithEmailImpUsecase = Bind.singleton(
  (i) => SignInWithEmailImpUsecase(i.get()),
  export: true,
);

class SignInWithEmailImpUsecase implements SignInWithEmailUsecase {
  final SignInWithEmailRepository _signInWithEmailRepository;

  SignInWithEmailImpUsecase(SignInWithEmailRepository signInWithEmailRepository)
      : _signInWithEmailRepository = signInWithEmailRepository;

  @override
  Future<CurrentUserEntity> call(String email, String password) {
    return _signInWithEmailRepository(email, password);
  }
}
