import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/ui/pages/profile/profile_controller.dart';
import 'presentation/ui/pages/profile/profile_page.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources
      
    //Controllers
		$ProfileController,
  ];

  @override
  final List<ModularRoute> routes = [
    //Pages
		ChildRoute(
			'/',
			child: (_, args) => const ProfilePage(),
		),
  ];
}
