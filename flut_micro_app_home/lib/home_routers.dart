import 'package:flutter_modular/flutter_modular.dart';

class HomeRouters {
  static goToWelcome() {
    return Modular.to.pushNamed('/onboarding/welcome');
  }

  static goToValidateEmail() {
    return Modular.to.pushNamed('/onboarding/validate-email');
  }

  static goToTimeLine() {
    return Modular.to.pushNamed('/home/time-line');
  }

  static goToHome() {
    return Modular.to.navigate('/home/');
  }

  static goToProfile() {
    return Modular.to.pushNamed('/profile');
  }

  static goToLogin() {
    return Modular.to.pushNamed('/onboarding/login');
  }

  static goToAccountRegister() {
    return Modular.to.pushNamed('/onboarding/account/register');
  }

  static goToRegisterShop() {
    return Modular.to.pushNamed('/register-shop/register-shop');
  }

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  HomeRouters._();
}
