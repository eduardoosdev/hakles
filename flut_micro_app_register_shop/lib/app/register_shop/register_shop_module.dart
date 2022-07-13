import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/ui/pages/register_company_pj/register_company_pj_controller.dart';
import 'presentation/ui/pages/register_company_pj/register_company_pj_page.dart';
import 'presentation/ui/pages/register_data_pj/register_data_pj_controller.dart';
import 'presentation/ui/pages/register_data_pj/register_data_pj_page.dart';
import 'presentation/ui/pages/register_data_pf/register_data_pf_controller.dart';
import 'presentation/ui/pages/register_data_pf/register_data_pf_page.dart';
import 'presentation/ui/pages/register_shop/register_shop_controller.dart';
import 'presentation/ui/pages/register_shop/register_shop_page.dart';

class RegisterShopModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources
      
    //Controllers
		$RegisterCompanyPjController,
		$RegisterDataPjController,
		$RegisterDataPfController,
		$RegisterShopController,
  ];

  @override
  final List<ModularRoute> routes = [
    //Pages
		ChildRoute(
			'/register-company-pj',
			child: (_, args) => RegisterCompanyPjPage(),
		),
		ChildRoute(
			'/register-data-pj',
			child: (_, args) => RegisterDataPjPage(),
		),
		ChildRoute(
			'/register-data-pf',
			child: (_, args) => RegisterDataPfPage(),
		),
		ChildRoute(
			'/register-shop',
			child: (_, args) => RegisterShopPage(),
		),
  ];
}
