// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_line_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimeLineController on _TimeLineControllerBase, Store {
  final _$loadingAtom = Atom(name: '_TimeLineControllerBase.loading');

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

  final _$_TimeLineControllerBaseActionController =
      ActionController(name: '_TimeLineControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_TimeLineControllerBaseActionController.startAction(
        name: '_TimeLineControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_TimeLineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
