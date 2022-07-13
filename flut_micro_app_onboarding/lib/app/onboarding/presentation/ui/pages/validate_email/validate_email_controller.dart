import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'validate_email_controller.g.dart';

final $ValidateEmailController = BindInject(
  (i) => ValidateEmailController(),
  isSingleton: true,
  isLazy: true,
);

class ValidateEmailController = _ValidateEmailControllerBase with _$ValidateEmailController;

abstract class _ValidateEmailControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}