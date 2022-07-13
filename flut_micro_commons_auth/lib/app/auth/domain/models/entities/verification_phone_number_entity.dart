import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';

class VerificationPhoneNumberEntity {
  final String phoneNumber;
  final Duration timeout;
  final Function(CurrentUserEntity currentUser) verificationCompleted;
  final Function(Exception exception) verificationFailed;

  VerificationPhoneNumberEntity({
    required this.phoneNumber,
    required this.verificationCompleted,
    required this.verificationFailed,
    this.timeout = const Duration(minutes: 2),
  });
}
