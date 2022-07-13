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

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  Routers._();
}
