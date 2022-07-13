import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'welcome_controller.g.dart';

final $WelcomeController = BindInject(
  (i) => WelcomeController(),
  isSingleton: true,
  isLazy: true,
);

class WelcomeController = _WelcomeControllerBase with _$WelcomeController;

abstract class _WelcomeControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}