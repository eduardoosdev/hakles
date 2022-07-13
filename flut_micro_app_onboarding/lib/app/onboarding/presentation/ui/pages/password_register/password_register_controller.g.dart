// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PasswordRegisterController on _PasswordRegisterControllerBase, Store {
  final _$enabledNextAtom =
      Atom(name: '_PasswordRegisterControllerBase.enabledNext');

  @override
  bool get enabledNext {
    _$enabledNextAtom.reportRead();
    return super.enabledNext;
  }

  @override
  set enabledNext(bool value) {
    _$enabledNextAtom.reportWrite(value, super.enabledNext, () {
      super.enabledNext = value;
    });
  }

  final _$loadingAtom = Atom(name: '_PasswordRegisterControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$createAccountAsyncAction =
      AsyncAction('_PasswordRegisterControllerBase.createAccount');

  @override
  Future<GenericUsecaseResponse> createAccount() {
    return _$createAccountAsyncAction.run(() => super.createAccount());
  }

  final _$_PasswordRegisterControllerBaseActionController =
      ActionController(name: '_PasswordRegisterControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_PasswordRegisterControllerBaseActionController
        .startAction(name: '_PasswordRegisterControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_PasswordRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnabledNext(bool value) {
    final _$actionInfo = _$_PasswordRegisterControllerBaseActionController
        .startAction(name: '_PasswordRegisterControllerBase.setEnabledNext');
    try {
      return super.setEnabledNext(value);
    } finally {
      _$_PasswordRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
enabledNext: ${enabledNext},
loading: ${loading}
    ''';
  }
}
