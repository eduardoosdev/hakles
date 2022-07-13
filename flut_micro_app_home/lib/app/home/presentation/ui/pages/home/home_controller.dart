import 'package:flut_micro_commons_auth/app/auth/domain/usecases/logged_user_usecase.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
part 'home_controller.g.dart';

final $HomeController = BindInject(
  (i) => HomeController(
    loggedUserUsecase: i.get(),
  ),
  isSingleton: true,
  isLazy: true,
);

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final LoggedUserUsecase _loggedUserUsecase;
  @observable
  bool loading = false;

  @observable
  CurrentUserEntity? currentUser;

  _HomeControllerBase({
    required LoggedUserUsecase loggedUserUsecase,
  }) : this._loggedUserUsecase = loggedUserUsecase;

  @action
  void setLoading(bool value) {
    loading = value;
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
}
