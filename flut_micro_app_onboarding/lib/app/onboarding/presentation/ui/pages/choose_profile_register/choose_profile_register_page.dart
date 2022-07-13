import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import '../../../../onboarding_routers.dart';
import 'choose_profile_register_controller.dart';

class ChooseProfileRegisterPage extends StatefulWidget {
  @override
  _ChooseProfileRegisterPageState createState() =>
      _ChooseProfileRegisterPageState();
}

class _ChooseProfileRegisterPageState extends ModularState<
    ChooseProfileRegisterPage, ChooseProfileRegisterController> {
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
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildHeader(),
                  _buildChooseProfile(),
                  _buildButtonsActions(),
                ],
              ),
            ),
            _buildBotton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return HeaderRegister(
      title: 'Escolha o tipo de perfil:',
      subtitle:
          'Depois você pode ir adicionando mais perfis na mesma conta de acordo com as suas necessidades',
    );
  }

  Widget _buildChooseProfile() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Column(
        children: [
          HakButton(
            text: 'Pessoal',
            onPressed: () {
              _onChooseProfile();
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff00C1DB),
            ),
          ),
          HakButton(
            text: 'Profissional',
            onPressed: () {
              _onChooseProfile();
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff071435),
            ),
          ),
          HakButton(
            text: 'Comercial',
            onPressed: () {
              _onChooseProfile();
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xffAF02B3),
            ),
          ),
          HakButton(
            text: 'Pet',
            onPressed: () {
              _onChooseProfile();
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xffAD0A0A),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonsActions() {
    return ButtonsActionsWidget(
      onPressedBack: () {
        OnboardingRouters.pop();
      },
    );
  }

  Widget _buildBotton() {
    return FooterRegisterWidget();
  }

  void _onChooseProfile() {
    OnboardingRouters.goToUsernameRegister();
  }
}
