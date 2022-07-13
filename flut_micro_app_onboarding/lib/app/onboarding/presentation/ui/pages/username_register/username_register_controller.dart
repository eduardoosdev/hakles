import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'username_register_controller.g.dart';

final $UsernameRegisterController = BindInject(
  (i) => UsernameRegisterController(),
  isSingleton: true,
  isLazy: true,
);

class UsernameRegisterController = _UsernameRegisterControllerBase
    with _$UsernameRegisterController;

abstract class _UsernameRegisterControllerBase with Store {
  final TextEditingController usernameController;

  @observable
  bool loading = false;

  _UsernameRegisterControllerBase()
      : usernameController = TextEditingController();

  @action
  void setLoading(bool value) {
    loading = value;
  }

  @action
  Future<GenericUsecaseResponse> existUsername(String username) async {
    try {
      loading = true;
 
      loading = false;
      return GenericUsecaseResponse(success: true);
    } catch (e) {
      loading = false;
      return GenericUsecaseResponse(
        success: false,
        message:
            'Este nome de usuário não está disponível. Tente novamente ou escolha uma das opções abaixo:',
      );
    }
  }
}
