import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/verification_phone_number_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../repositories/sign_in_with_phone_repository.dart';
import 'sign_in_with_phone_usecase.dart';

final $SignInWithPhoneImpUsecase = Bind.singleton(
  (i) => SignInWithPhoneImpUsecase(i.get()),
  export: true,
);

class SignInWithPhoneImpUsecase implements SignInWithPhoneUsecase {
  final SignInWithPhoneRepository _signInWithPhoneRepository;

  SignInWithPhoneImpUsecase(SignInWithPhoneRepository signInWithPhoneRepository)
      : _signInWithPhoneRepository = signInWithPhoneRepository;

  @override
  Future<void> validateToken(String token) {
    return _signInWithPhoneRepository.validateToken(token);
  }

  @override
  Future<void> verifyPhoneNumber(
    VerificationPhoneNumberEntity verificationPhoneNumber,
  ) {
    return _signInWithPhoneRepository.verifyPhoneNumber(
      verificationPhoneNumber,
    );
  }
}
