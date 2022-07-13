import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_data_pj_controller.g.dart';

final $RegisterDataPjController = BindInject(
  (i) => RegisterDataPjController(),
  isSingleton: true,
  isLazy: true,
);

class RegisterDataPjController = _RegisterDataPjControllerBase with _$RegisterDataPjController;

abstract class _RegisterDataPjControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}