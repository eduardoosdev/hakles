// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_phone_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ValidatePhoneController on _ValidatePhoneControllerBase, Store {
  final _$phoneNumberValidAtom =
      Atom(name: '_ValidatePhoneControllerBase.phoneNumberValid');

  @override
  bool get phoneNumberValid {
    _$phoneNumberValidAtom.reportRead();
    return super.phoneNumberValid;
  }

  @override
  set phoneNumberValid(bool value) {
    _$phoneNumberValidAtom.reportWrite(value, super.phoneNumberValid, () {
      super.phoneNumberValid = value;
    });
  }

  final _$codeErrorAtom = Atom(name: '_ValidatePhoneControllerBase.codeError');

  @override
  bool get codeError {
    _$codeErrorAtom.reportRead();
    return super.codeError;
  }

  @override
  set codeError(bool value) {
    _$codeErrorAtom.reportWrite(value, super.codeError, () {
      super.codeError = value;
    });
  }

  final _$canRestartAtom =
      Atom(name: '_ValidatePhoneControllerBase.canRestart');

  @override
  bool get canRestart {
    _$canRestartAtom.reportRead();
    return super.canRestart;
  }

  @override
  set canRestart(bool value) {
    _$canRestartAtom.reportWrite(value, super.canRestart, () {
      super.canRestart = value;
    });
  }

  final _$loadingValidPhoneNumberAtom =
      Atom(name: '_ValidatePhoneControllerBase.loadingValidPhoneNumber');

  @override
  bool get loadingValidPhoneNumber {
    _$loadingValidPhoneNumberAtom.reportRead();
    return super.loadingValidPhoneNumber;
  }

  @override
  set loadingValidPhoneNumber(bool value) {
    _$loadingValidPhoneNumberAtom
        .reportWrite(value, super.loadingValidPhoneNumber, () {
      super.loadingValidPhoneNumber = value;
    });
  }

  final _$loadingGenerateTokenPhoneNumberAtom = Atom(
      name: '_ValidatePhoneControllerBase.loadingGenerateTokenPhoneNumber');

  @override
  bool get loadingGenerateTokenPhoneNumber {
    _$loadingGenerateTokenPhoneNumberAtom.reportRead();
    return super.loadingGenerateTokenPhoneNumber;
  }

  @override
  set loadingGenerateTokenPhoneNumber(bool value) {
    _$loadingGenerateTokenPhoneNumberAtom
        .reportWrite(value, super.loadingGenerateTokenPhoneNumber, () {
      super.loadingGenerateTokenPhoneNumber = value;
    });
  }

  final _$messageErrorValidTokenAtom =
      Atom(name: '_ValidatePhoneControllerBase.messageErrorValidToken');

  @override
  String? get messageErrorValidToken {
    _$messageErrorValidTokenAtom.reportRead();
    return super.messageErrorValidToken;
  }

  @override
  set messageErrorValidToken(String? value) {
    _$messageErrorValidTokenAtom
        .reportWrite(value, super.messageErrorValidToken, () {
      super.messageErrorValidToken = value;
    });
  }

  final _$generateTokenAsyncAction =
      AsyncAction('_ValidatePhoneControllerBase.generateToken');

  @override
  Future<void> generateToken(
      VerificationPhoneNumberEntity verificationPhoneNumberEntity) {
    return _$generateTokenAsyncAction
        .run(() => super.generateToken(verificationPhoneNumberEntity));
  }

  final _$validateTokenAsyncAction =
      AsyncAction('_ValidatePhoneControllerBase.validateToken');

  @override
  Future<void> validateToken(String token) {
    return _$validateTokenAsyncAction.run(() => super.validateToken(token));
  }

  final _$_ValidatePhoneControllerBaseActionController =
      ActionController(name: '_ValidatePhoneControllerBase');

  @override
  void setLoadingValidPhoneNumber(bool value) {
    final _$actionInfo =
        _$_ValidatePhoneControllerBaseActionController.startAction(
            name: '_ValidatePhoneControllerBase.setLoadingValidPhoneNumber');
    try {
      return super.setLoadingValidPhoneNumber(value);
    } finally {
      _$_ValidatePhoneControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCanRestart(bool value) {
    final _$actionInfo = _$_ValidatePhoneControllerBaseActionController
        .startAction(name: '_ValidatePhoneControllerBase.setCanRestart');
    try {
      return super.setCanRestart(value);
    } finally {
      _$_ValidatePhoneControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCodeError(bool value) {
    final _$actionInfo = _$_ValidatePhoneControllerBaseActionController
        .startAction(name: '_ValidatePhoneControllerBase.setCodeError');
    try {
      return super.setCodeError(value);
    } finally {
      _$_ValidatePhoneControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMessageErrorValidToken(String value) {
    final _$actionInfo =
        _$_ValidatePhoneControllerBaseActionController.startAction(
            name: '_ValidatePhoneControllerBase.setMessageErrorValidToken');
    try {
      return super.setMessageErrorValidToken(value);
    } finally {
      _$_ValidatePhoneControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneNumberValid(bool value) {
    final _$actionInfo = _$_ValidatePhoneControllerBaseActionController
        .startAction(name: '_ValidatePhoneControllerBase.setPhoneNumberValid');
    try {
      return super.setPhoneNumberValid(value);
    } finally {
      _$_ValidatePhoneControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
phoneNumberValid: ${phoneNumberValid},
codeError: ${codeError},
canRestart: ${canRestart},
loadingValidPhoneNumber: ${loadingValidPhoneNumber},
loadingGenerateTokenPhoneNumber: ${loadingGenerateTokenPhoneNumber},
messageErrorValidToken: ${messageErrorValidToken}
    ''';
  }
}
