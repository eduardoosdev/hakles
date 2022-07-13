import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'success_register_controller.g.dart';

final $SuccessRegisterController = BindInject(
  (i) => SuccessRegisterController(),
  isSingleton: true,
  isLazy: true,
);

class SuccessRegisterController = _SuccessRegisterControllerBase with _$SuccessRegisterController;

abstract class _SuccessRegisterControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}