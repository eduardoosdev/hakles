import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/verification_phone_number_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/sign_in_with_phone_repository.dart';
import '../datasources/sign_in_with_phone_datasource.dart';

final $SignInWithPhoneImpRepository = Bind.singleton(
  (i) => SignInWithPhoneImpRepository(i.get()),
  export: true,
);

class SignInWithPhoneImpRepository implements SignInWithPhoneRepository {
  final SignInWithPhoneDatasource _signInWithPhoneDatasource;

  SignInWithPhoneImpRepository(
      SignInWithPhoneDatasource signInWithPhoneDatasource)
      : _signInWithPhoneDatasource = signInWithPhoneDatasource;

  @override
  Future<void> validateToken(String token) {
    return _signInWithPhoneDatasource.validateToken(token);
  }

  @override
  Future<void> verifyPhoneNumber(
    VerificationPhoneNumberEntity verificationPhoneNumber,
  ) {
    return _signInWithPhoneDatasource.verifyPhoneNumber(
      verificationPhoneNumber,
    );
  }
}
