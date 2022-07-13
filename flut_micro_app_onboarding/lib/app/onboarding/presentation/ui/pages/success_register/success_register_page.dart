import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import 'success_register_controller.dart';

class SuccessRegisterPage extends StatefulWidget {
  @override
  _SuccessRegisterPageState createState() => _SuccessRegisterPageState();
}

class _SuccessRegisterPageState
    extends ModularState<SuccessRegisterPage, SuccessRegisterController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Container(
        padding: HakEdgeInsets.paddingDevice(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffEA5B4D),
              Color(0xff648ACB),
            ],
            begin: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            _buildHeader(),
            _buildChooseOptions(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return HeaderRegister(
      title:
          'Olá!\n@JheimeSilveira\nagora que você já tem seu perfil você pode',
    );
  }

  Widget _buildChooseOptions() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Column(
        children: [
          HakButton(
            text: 'Voltar para o carrinho de compras',
            onPressed: () {},
          ),
          HakButton(
            text: 'Navegar pela timeline',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
