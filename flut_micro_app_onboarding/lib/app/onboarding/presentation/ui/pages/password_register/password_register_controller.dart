import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'password_register_controller.g.dart';

final $PasswordRegisterController = BindInject(
  (i) => PasswordRegisterController(),
  isSingleton: true,
  isLazy: true,
);

class PasswordRegisterController = _PasswordRegisterControllerBase
    with _$PasswordRegisterController;

abstract class _PasswordRegisterControllerBase with Store {
  final TextEditingController passwordController;
  final TextEditingController repeatePasswordController;
  @observable
  bool enabledNext = false;
  @observable
  bool loading = false;

  _PasswordRegisterControllerBase()
      : this.passwordController = TextEditingController(),
        this.repeatePasswordController = TextEditingController();

  @action
  void setLoading(bool value) {
    loading = value;
  }

  @action
  void setEnabledNext(bool value) {
    enabledNext = value;
  }

  @action
  Future<GenericUsecaseResponse> createAccount() async {
    try {
      loading = true;
      await Future.delayed(Duration(milliseconds: 800));
      loading = false;
      return GenericUsecaseResponse(success: true);
    } catch (e) {
      loading = false;
      return GenericUsecaseResponse(success: false);
    }
  }
}
