import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_shop_controller.g.dart';

final $RegisterShopController = BindInject(
  (i) => RegisterShopController(),
  isSingleton: true,
  isLazy: true,
);

class RegisterShopController = _RegisterShopControllerBase with _$RegisterShopController;

abstract class _RegisterShopControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}