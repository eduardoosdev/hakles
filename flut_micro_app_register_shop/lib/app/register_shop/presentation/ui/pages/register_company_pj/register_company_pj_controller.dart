import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_company_pj_controller.g.dart';

final $RegisterCompanyPjController = BindInject(
  (i) => RegisterCompanyPjController(),
  isSingleton: true,
  isLazy: true,
);

class RegisterCompanyPjController = _RegisterCompanyPjControllerBase with _$RegisterCompanyPjController;

abstract class _RegisterCompanyPjControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}