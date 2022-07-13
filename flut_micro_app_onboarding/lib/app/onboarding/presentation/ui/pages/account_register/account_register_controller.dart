import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'account_register_controller.g.dart';

final $AccountRegisterController = BindInject(
  (i) => AccountRegisterController(),
  isSingleton: true,
  isLazy: true,
);

class AccountRegisterController = _AccountRegisterControllerBase with _$AccountRegisterController;

abstract class _AccountRegisterControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}