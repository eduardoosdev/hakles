import 'package:flut_micro_app_register_shop/app/register_shop/presentation/ui/widgets/body_register_shop.dart';
import 'package:flut_micro_app_register_shop/app/register_shop/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import '../../../../../../routers.dart';
import 'register_data_pf_controller.dart';

class RegisterDataPfPage extends StatefulWidget {
  @override
  _RegisterDataPfPageState createState() => _RegisterDataPfPageState();
}

class _RegisterDataPfPageState
    extends ModularState<RegisterDataPfPage, RegisterDataPfController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: BodyRegisterShop(
        title: 'Cadastro de loja pessoa física',
        child: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: HakEdgeInsets.paddingDevice(context, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dados Cadastrais',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: HakTextField(
                    labelText: '| Nome',
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Sobrenome',
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| CPF',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| E-mail',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Telefone',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Endereço de cobrança',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: HakTextField(
                    labelText: '| Endereço de logística',
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
