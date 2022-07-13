// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

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

  final _$currentUserAtom = Atom(name: '_LoginControllerBase.currentUser');

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

  final _$logoutAsyncAction = AsyncAction('_LoginControllerBase.logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$loggedUserAsyncAction =
      AsyncAction('_LoginControllerBase.loggedUser');

  @override
  Future loggedUser() {
    return _$loggedUserAsyncAction.run(() => super.loggedUser());
  }

  final _$authGoogleAsyncAction =
      AsyncAction('_LoginControllerBase.authGoogle');

  @override
  Future<GenericUsecaseResponse> authGoogle() {
    return _$authGoogleAsyncAction.run(() => super.authGoogle());
  }

  final _$authEmailAsyncAction = AsyncAction('_LoginControllerBase.authEmail');

  @override
  Future<GenericUsecaseResponse> authEmail(String email, String password) {
    return _$authEmailAsyncAction.run(() => super.authEmail(email, password));
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
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
