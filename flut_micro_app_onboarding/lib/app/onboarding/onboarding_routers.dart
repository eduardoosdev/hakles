import 'package:flutter_modular/flutter_modular.dart';

class OnboardingRouters {
	static goToHome() {
		return Modular.to.navigate('/home/');
	}
  //Onboarding
	static goToValidateEmail() {
		return Modular.to.pushNamed('/onboarding/validate-email');
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

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  OnboardingRouters._();
}
