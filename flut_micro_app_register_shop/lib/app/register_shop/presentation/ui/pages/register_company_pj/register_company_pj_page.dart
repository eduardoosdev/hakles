import 'package:flut_micro_app_register_shop/app/register_shop/presentation/ui/widgets/body_register_shop.dart';
import 'package:flut_micro_app_register_shop/app/register_shop/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import '../../../../../../routers.dart';
import 'register_company_pj_controller.dart';

class RegisterCompanyPjPage extends StatefulWidget {
  @override
  _RegisterCompanyPjPageState createState() => _RegisterCompanyPjPageState();
}

class _RegisterCompanyPjPageState
    extends ModularState<RegisterCompanyPjPage, RegisterCompanyPjController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: BodyRegisterShop(
        title: 'Cadastro de loja pessoa Jurídica',
        child: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: HakEdgeInsets.paddingDevice(context, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dados Cadastrais da Empresa',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: HakTextField(
                    labelText: '| Razão social',
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Nome fantazia',
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Telefone empresa',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                ButtonsActionsWidget(
                  onPressedBack: () {
                    Routers.pop();
                  },
                  onPressedNext: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
