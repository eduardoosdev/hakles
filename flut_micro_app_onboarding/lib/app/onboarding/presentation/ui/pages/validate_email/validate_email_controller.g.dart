// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_email_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ValidateEmailController on _ValidateEmailControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ValidateEmailControllerBase.loading');

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

  final _$_ValidateEmailControllerBaseActionController =
      ActionController(name: '_ValidateEmailControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_ValidateEmailControllerBaseActionController
        .startAction(name: '_ValidateEmailControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_ValidateEmailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
