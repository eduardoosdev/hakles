import 'package:flutter_modular/flutter_modular.dart';

class HttpClientRouters {
  //Http Client

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  HttpClientRouters._();
}
