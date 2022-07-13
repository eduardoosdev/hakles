import 'package:flutter_modular/flutter_modular.dart';

class ProfileRouters {
  //Profile
  static goToProfile() {
    return Modular.to.pushNamed('/profile');
  }

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  ProfileRouters._();
}
