// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountRegisterController on _AccountRegisterControllerBase, Store {
  final _$loadingAtom = Atom(name: '_AccountRegisterControllerBase.loading');

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

  final _$_AccountRegisterControllerBaseActionController =
      ActionController(name: '_AccountRegisterControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_AccountRegisterControllerBaseActionController
        .startAction(name: '_AccountRegisterControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_AccountRegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
