import 'package:flutter_modular/flutter_modular.dart';

class Routers {
  //Register Shop
  static goToRegisterCompanyPj() {
    return Modular.to.pushNamed('/register-shop/register-company-pj');
  }

  static goToRegisterDataPj() {
    return Modular.to.pushNamed('/register-shop/register-data-pj');
  }

  static goToRegisterDataPf() {
    return Modular.to.pushNamed('/register-shop/register-data-pf');
  }

  static goToRegisterShop() {
    return Modular.to.pushNamed('/register-shop/register-shop');
  }

  static goToSuccessRegister() {
    return Modular.to.pushNamed('/onboarding/success/register');
  }

  static goToChooseProfileRegister() {
    return Modular.to.pushNamed('/onboarding/choose/profile/register');
  }

  static goToUsernameRegister() {
    return Modular.to.pushNamed('/onboarding/username/register');
  }

  static goToPasswordRegister() {
    return Modular.to.pushNamed('/onboarding/password/register');
  }

  static goToValidatePhone() {
    return Modular.to.pushNamed('/onboarding/validate/phone');
  }

  static goToWelcome() {
    return Modular.to.pushNamed('/onboarding/welcome');
  }

  static goToLogin() {
    return Modular.to.pushNamed('/onboarding/login');
  }

  static goToAccountRegister() {
    return Modular.to.pushNamed('/onboarding/account/register');
  }

  static goToMultiProfile() {
    return Modular.to.pushNamed('/profile/multi/profile');
  }

  static goToProfile() {
    return Modular.to.pushNamed('/profile/profile');
  }

  static goToTimeLine() {
    return Modular.to.pushNamed('/time-line');
  }

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  Routers._();
}
