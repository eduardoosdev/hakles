import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_data_pf_controller.g.dart';

final $RegisterDataPfController = BindInject(
  (i) => RegisterDataPfController(),
  isSingleton: true,
  isLazy: true,
);

class RegisterDataPfController = _RegisterDataPfControllerBase with _$RegisterDataPfController;

abstract class _RegisterDataPfControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}