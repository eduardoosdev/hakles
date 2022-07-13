// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_pf_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterDataPfController on _RegisterDataPfControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterDataPfControllerBase.loading');

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

  final _$_RegisterDataPfControllerBaseActionController =
      ActionController(name: '_RegisterDataPfControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_RegisterDataPfControllerBaseActionController
        .startAction(name: '_RegisterDataPfControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_RegisterDataPfControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
