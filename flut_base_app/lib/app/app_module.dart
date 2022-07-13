import 'package:flut_micro_app_home/flut_micro_app_home.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/onboarding_module.dart';
import 'package:flut_micro_app_profile/app/profile/profile_module.dart';
import 'package:flut_micro_app_register_shop/app/register_shop/register_shop_module.dart';
import 'package:flut_micro_commons_auth/flut_micro_commons_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/app_controller.dart';
import 'presentation/ui/pages/splash/splash_controller.dart';
import 'presentation/ui/pages/splash/splash_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $AppController,
    $SplashController,
  ];

  @override
  final List<Module> imports = [
    AuthModule(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => SplashPage()),
    ModuleRoute(
      '/home',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/onboarding',
      module: OnboardingModule(),
    ),
    ModuleRoute(
      '/register-shop',
      module: RegisterShopModule(),
    ),
    ModuleRoute(
      '/profile',
      module: ProfileModule(),
    ),
  ];
}
