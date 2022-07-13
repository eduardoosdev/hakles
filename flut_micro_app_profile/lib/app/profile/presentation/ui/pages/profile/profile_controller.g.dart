// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileControllerBase, Store {
  final _$loadingAtom = Atom(name: '_ProfileControllerBase.loading');

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

  final _$currentUserAtom = Atom(name: '_ProfileControllerBase.currentUser');

  @override
  CurrentUserEntity? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(CurrentUserEntity? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$loggedUserUsecaseAsyncAction =
      AsyncAction('_ProfileControllerBase.loggedUserUsecase');

  @override
  Future<void> loggedUserUsecase() {
    return _$loggedUserUsecaseAsyncAction.run(() => super.loggedUserUsecase());
  }

  final _$logoutUsecaseAsyncAction =
      AsyncAction('_ProfileControllerBase.logoutUsecase');

  @override
  Future<void> logoutUsecase() {
    return _$logoutUsecaseAsyncAction.run(() => super.logoutUsecase());
  }

  final _$_ProfileControllerBaseActionController =
      ActionController(name: '_ProfileControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_ProfileControllerBaseActionController.startAction(
        name: '_ProfileControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_ProfileControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
currentUser: ${currentUser}
    ''';
  }
}
