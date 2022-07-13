import 'package:flut_micro_commons_auth/flut_micro_commons_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'validate_phone_controller.g.dart';

final $ValidatePhoneController = BindInject(
  (i) => ValidatePhoneController(i.get()),
  isSingleton: true,
  isLazy: true,
);

class ValidatePhoneController = _ValidatePhoneControllerBase
    with _$ValidatePhoneController;

abstract class _ValidatePhoneControllerBase with Store {
  final SignInWithPhoneUsecase _signInWithPhoneUsecase;

  @observable
  bool phoneNumberValid = false;

  @observable
  bool codeError = false;

  @observable
  bool canRestart = false;

  @observable
  bool loadingValidPhoneNumber = false;

  @observable
  bool loadingGenerateTokenPhoneNumber = false;

  @observable
  String? messageErrorValidToken;

  _ValidatePhoneControllerBase(this._signInWithPhoneUsecase);

  @action
  void setLoadingValidPhoneNumber(bool value) {
    loadingValidPhoneNumber = value;
  }

  @action
  void setCanRestart(bool value) {
    canRestart = value;
  }

  @action
  Future<void> generateToken(
    VerificationPhoneNumberEntity verificationPhoneNumberEntity,
  ) async {
    setCanRestart(false);
    try {
      loadingGenerateTokenPhoneNumber = true;
      messageErrorValidToken = null;
      await _verificationPhoneNumber(
        verificationPhoneNumberEntity,
      );

      loadingGenerateTokenPhoneNumber = false;
    } catch (e) {
      loadingGenerateTokenPhoneNumber = false;
    }
  }

  Future<void> _verificationPhoneNumber(
    VerificationPhoneNumberEntity verificationPhoneNumber,
  ) async {
    await _signInWithPhoneUsecase.verifyPhoneNumber(
      verificationPhoneNumber,
    );
  }

  @action
  void setCodeError(bool value) {
    codeError = value;
  }

  @action
  void setMessageErrorValidToken(String value) {
    messageErrorValidToken = value;
  }

  @action
  Future<void> validateToken(String token) async {
    try {
      loadingValidPhoneNumber = true;
      messageErrorValidToken = null;
      await _signInWithPhoneUsecase.validateToken(token);
    } catch (e) {
      loadingValidPhoneNumber = false;
    }
  }

  @action
  void setPhoneNumberValid(bool value) {
    phoneNumberValid = value;
  }
}
