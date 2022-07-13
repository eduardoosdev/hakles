import 'package:flut_micro_app_register_shop/app/register_shop/presentation/ui/widgets/body_register_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import '../../../../../../routers.dart';
import 'register_shop_controller.dart';

class RegisterShopPage extends StatefulWidget {
  @override
  _RegisterShopPageState createState() => _RegisterShopPageState();
}

class _RegisterShopPageState
    extends ModularState<RegisterShopPage, RegisterShopController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: BodyRegisterShop(
        child: Container(
          padding: HakEdgeInsets.paddingDevice(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHeader(context),
              _buildButtonPf(),
              _buildButtonPJ(),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildHeader(BuildContext context) {
    return Column(
      children: [
        Text(
          'Cadastro Loja',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'Você ira vender como',
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }

  Column _buildButtonPf() {
    return Column(
      children: [
        HakButton(
          text: 'Pessoa Física',
          onPressed: () {
            Routers.goToRegisterDataPf();
          },
        ),
        Text(
          'Como pessoa física você pode vender até xx por mês.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Column _buildButtonPJ() {
    return Column(
      children: [
        HakButton(
          text: 'Pessoa Jurídica',
          onPressed: () {
            Routers.goToRegisterDataPj();
          },
          style: ElevatedButton.styleFrom(
            primary: HakColors.secondary,
          ),
        ),
        Text(
          'Como pessoa jurídica você poderá vender de acordo com o seu tipo de CNPJ.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
