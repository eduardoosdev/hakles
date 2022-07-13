import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/ui/pages/home/home_controller.dart';
import 'presentation/ui/pages/home/home_page.dart';
import 'presentation/ui/pages/time_line/time_line_controller.dart';
import 'presentation/ui/pages/time_line/time_line_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
    $TimeLineController,
    $HomeController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
    ChildRoute('/time-line', child: (_, __) => TimeLinePage()),
  ];
}
