import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'choose_profile_register_controller.g.dart';

final $ChooseProfileRegisterController = BindInject(
  (i) => ChooseProfileRegisterController(),
  isSingleton: true,
  isLazy: true,
);

class ChooseProfileRegisterController = _ChooseProfileRegisterControllerBase with _$ChooseProfileRegisterController;

abstract class _ChooseProfileRegisterControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}