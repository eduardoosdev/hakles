import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/ui/pages/validate_email/validate_email_controller.dart';
import 'presentation/ui/pages/validate_email/validate_email_page.dart';
import 'presentation/ui/pages/success_register/success_register_controller.dart';
import 'presentation/ui/pages/success_register/success_register_page.dart';
import 'presentation/ui/pages/choose_profile_register/choose_profile_register_controller.dart';
import 'presentation/ui/pages/choose_profile_register/choose_profile_register_page.dart';
import 'presentation/ui/pages/username_register/username_register_controller.dart';
import 'presentation/ui/pages/username_register/username_register_page.dart';
import 'presentation/ui/pages/password_register/password_register_controller.dart';
import 'presentation/ui/pages/password_register/password_register_page.dart';
import 'presentation/ui/pages/validate_phone/validate_phone_controller.dart';
import 'presentation/ui/pages/validate_phone/validate_phone_page.dart';
import 'presentation/ui/pages/welcome/welcome_controller.dart';
import 'presentation/ui/pages/welcome/welcome_page.dart';
import 'presentation/ui/pages/login/login_controller.dart';
import 'presentation/ui/pages/login/login_page.dart';
import 'presentation/ui/pages/account_register/account_register_controller.dart';
import 'presentation/ui/pages/account_register/account_register_page.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
		$ValidateEmailController,
    $SuccessRegisterController,
    $ChooseProfileRegisterController,
    $UsernameRegisterController,
    $PasswordRegisterController,
    $ValidatePhoneController,
    $WelcomeController,
    $LoginController,
    $AccountRegisterController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/welcome',
      child: (_, args) => WelcomePage(),
    ),
    //Pages
		ChildRoute(
			'/validate-email',
			child: (_, args) => ValidateEmailPage(),
		),
    ChildRoute(
      '/success/register',
      child: (_, args) => SuccessRegisterPage(),
    ),
    ChildRoute(
      '/choose/profile/register',
      child: (_, args) => ChooseProfileRegisterPage(),
    ),
    ChildRoute(
      '/username/register',
      child: (_, args) => UsernameRegisterPage(),
    ),
    ChildRoute(
      '/password/register',
      child: (_, args) => PasswordRegisterPage(),
    ),
    ChildRoute(
      '/validate/phone',
      child: (_, args) => ValidatePhonePage(),
    ),
    ChildRoute(
      '/login',
      child: (_, args) => LoginPage(),
    ),
    ChildRoute(
      '/account/register',
      child: (_, args) => AccountRegisterPage(),
    ),
  ];
}
