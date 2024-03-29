import 'package:exemple/app/modules/components/presentation/ui/pages/avatar/avatar_page.dart';
import 'package:exemple/app/modules/components/presentation/ui/pages/network_image/network_image_page.dart';
import 'package:exemple/app/modules/components/presentation/ui/pages/pin_code_text_field/pin_code_text_field_page.dart';
import 'package:exemple/app/modules/components/presentation/ui/pages/progress/progress_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/ui/pages/button/button_page.dart';
import 'presentation/ui/pages/list_components/list_components_controller.dart';
import 'presentation/ui/pages/list_components/list_components_page.dart';
import 'presentation/ui/pages/text_field/text_field_page.dart';
import 'presentation/ui/widgets/dialog_choose_variant/dialog_choose_variant_controller.dart';

class ComponentsModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
    $ListComponentsController,
    $DialogChooseVariantController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/list/components',
      child: (_, args) => ListComponentsPage(),
    ),
    //Pages
    ChildRoute(
      '/text-field',
      child: (_, args) => TextFieldPage(),
    ),
    ChildRoute(
      '/pin-code-text-field',
      child: (_, args) => PinCodeTextFieldPage(),
    ),
    ChildRoute(
      '/button',
      child: (_, args) => ButtonPage(),
    ),
    ChildRoute(
      '/avatar',
      child: (_, args) => AvatarPage(),
    ),
    ChildRoute(
      '/network-image',
      child: (_, args) => NetworkImagePage(),
    ),
    ChildRoute(
      '/progress',
      child: (_, args) => ProgressPage(),
    ),
  ];
}
