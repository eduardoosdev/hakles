// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'username_register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsernameRegisterController on _UsernameRegisterControllerBase, Store {
  final _$loadingAtom = Atom(name: '_UsernameRegisterControllerBase.loading');

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

  final _$existUsernameAsyncAction =
      AsyncAction('_UsernameRegisterControllerBase.existUsername');

  @override
  Future<GenericUsecaseResponse> existUsername(String username) {
    return _$existUsernameAsyncAction.run(() => super.existUsername(username));
  }

  final _$_UsernameRegisterControllerBaseActionController =
      ActionController(name: '_UsernameRegisterControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_UsernameRegisterControllerBaseActionController
        .startAction(name: '_UsernameRegisterControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_UsernameRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
