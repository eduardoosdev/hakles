import 'package:flut_micro_commons_auth/app/auth/domain/models/enums/type_access.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/usecases/logged_user_usecase.dart';
import 'package:flut_micro_commons_auth/flut_micro_commons_auth.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

final $LoginController = BindInject(
  (i) => LoginController(
    signInWithEmailUsecase: i.get(),
    signInWithGoogleUsecase: i.get(),
    loggedUserUsecase: i.get(),
    logoutUsecase: i.get(),
  ),
  isSingleton: true,
  isLazy: true,
);

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final SignInWithGoogleUsecase _signInWithGoogleUsecase;
  final SignInWithEmailUsecase _signInWithEmailUsecase;
  final LoggedUserUsecase _loggedUserUsecase;
  final LogoutUsecase _logoutUsecase;

  @observable
  bool loading = false;

  @observable
  CurrentUserEntity? currentUser;

  _LoginControllerBase({
    required SignInWithEmailUsecase signInWithEmailUsecase,
    required SignInWithGoogleUsecase signInWithGoogleUsecase,
    required LoggedUserUsecase loggedUserUsecase,
    required LogoutUsecase logoutUsecase,
  })  : _signInWithGoogleUsecase = signInWithGoogleUsecase,
        _signInWithEmailUsecase = signInWithEmailUsecase,
        _loggedUserUsecase = loggedUserUsecase,
        _logoutUsecase = logoutUsecase {
    loggedUser();
  }

  @action
  void setLoading(bool value) {
    loading = value;
  }

  @action
  logout() async {
    await _logoutUsecase();
    currentUser = null;
  }

  @action
  loggedUser() async {
    loading = true;
    try {
      currentUser = await _loggedUserUsecase();
    } catch (e) {
      currentUser = null;
    }
    loading = false;
  }

  @action
  Future<GenericUsecaseResponse> authGoogle() async {
    GenericUsecaseResponse response;
    loading = true;
    try {
      currentUser = await _signInWithGoogleUsecase();
      response = GenericUsecaseResponse(success: true);
    } catch (e) {
      response = GenericUsecaseResponse(success: false, message: e);
    }
    loading = false;
    return response;
  }

  @action
  Future<GenericUsecaseResponse> authEmail(
    String email,
    String password,
  ) async {
    GenericUsecaseResponse response;
    loading = true;
    try {
      currentUser = await _signInWithEmailUsecase(email, password);
      response = GenericUsecaseResponse(success: true);
    } catch (e) {
      response = GenericUsecaseResponse(success: false, message: e);
    }
    loading = false;
    return response;
  }
}
