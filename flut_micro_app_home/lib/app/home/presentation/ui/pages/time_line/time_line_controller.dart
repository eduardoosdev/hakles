import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'time_line_controller.g.dart';

final $TimeLineController = BindInject(
  (i) => TimeLineController(),
  isSingleton: true,
  isLazy: true,
);

class TimeLineController = _TimeLineControllerBase with _$TimeLineController;

abstract class _TimeLineControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}

          