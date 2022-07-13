import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import '../../../../onboarding_routers.dart';
import 'username_register_controller.dart';

class UsernameRegisterPage extends StatefulWidget {
  @override
  _UsernameRegisterPageState createState() => _UsernameRegisterPageState();
}

class _UsernameRegisterPageState
    extends ModularState<UsernameRegisterPage, UsernameRegisterController> {
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
                  _buildUsername(),
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
      title: 'Nome de usuário',
    );
  }

  Widget _buildUsername() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: HakTextField(
        labelText: '@MeuNome',
      ),
    );
  }

  Widget _buildButtonsActions() {
    return ButtonsActionsWidget(
      onPressedBack: () {
        OnboardingRouters.pop();
      },
      onPressedNext: () async {
        final result = await controller.existUsername(
          controller.usernameController.text.trim(),
        );
        if (result.success) {
          //TODO redireciona para pagina
          return;
        }
        _showSheetMoreOptionsUserName(title: result.message!);
      },
    );
  }

  Widget _buildBotton() {
    return FooterRegisterWidget();
  }

  void _showSheetMoreOptionsUserName({required String title}) {
    HakBottomSheet.showCustom(
      context: context,
      builder: (_) {
        return Container(
          padding: HakEdgeInsets.paddingDevice(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: HakButton(
                  text: 'Opção 1',
                  onPressed: () {
                    OnboardingRouters.goToSuccessRegister();
                  },
                ),
              ),
              HakButton(
                text: 'Opção 2',
                onPressed: () {
                  OnboardingRouters.goToSuccessRegister();
                },
              ),
              HakButton(
                text: 'Opção 3',
                onPressed: () {
                  OnboardingRouters.goToSuccessRegister();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
