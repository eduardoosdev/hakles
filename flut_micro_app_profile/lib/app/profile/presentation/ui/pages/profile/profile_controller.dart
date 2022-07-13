import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/usecases/logged_user_usecase.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/usecases/logout_google_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'profile_controller.g.dart';

final $ProfileController = BindInject(
  (i) => ProfileController(i.get(), i.get()),
  isSingleton: true,
  isLazy: true,
);

class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  final LogoutUsecase _logoutUsecase;
  final LoggedUserUsecase _loggedUserUsecase;

  @observable
  bool loading = false;

  @observable
  CurrentUserEntity? currentUser;

  _ProfileControllerBase(this._loggedUserUsecase, this._logoutUsecase) {
    loggedUserUsecase();
  }

  @action
  void setLoading(bool value) {
    loading = value;
  }

  @action
  Future<void> loggedUserUsecase() async {
    currentUser = await _loggedUserUsecase();
  }

  @action
  Future<void> logoutUsecase() async {
    await _logoutUsecase();
  }
}
