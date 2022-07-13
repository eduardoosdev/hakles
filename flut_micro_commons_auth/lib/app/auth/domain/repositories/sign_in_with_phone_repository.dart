import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/verification_phone_number_entity.dart';

abstract class SignInWithPhoneRepository {
  Future<void> verifyPhoneNumber(
    VerificationPhoneNumberEntity verificationPhoneNumber,
  );

  Future<void> validateToken(String token);
}
  