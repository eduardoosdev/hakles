// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_pj_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterDataPjController on _RegisterDataPjControllerBase, Store {
  final _$loadingAtom = Atom(name: '_RegisterDataPjControllerBase.loading');

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

  final _$_RegisterDataPjControllerBaseActionController =
      ActionController(name: '_RegisterDataPjControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_RegisterDataPjControllerBaseActionController
        .startAction(name: '_RegisterDataPjControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_RegisterDataPjControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
