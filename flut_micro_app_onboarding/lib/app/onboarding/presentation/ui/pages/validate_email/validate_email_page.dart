import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import '../../../../onboarding_routers.dart';
import '../../../ui/widgets/footer_register_widget.dart';
import '../../../ui/widgets/header_register_widget.dart';
import 'validate_email_controller.dart';

class ValidateEmailPage extends StatefulWidget {
  const ValidateEmailPage({Key? key}) : super(key: key);

  @override
  _ValidateEmailPageState createState() => _ValidateEmailPageState();
}

class _ValidateEmailPageState
    extends ModularState<ValidateEmailPage, ValidateEmailController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late KeyboardVisibilityController keyboardVisibilityController;

  @override
  void initState() {
    super.initState();

    keyboardVisibilityController = KeyboardVisibilityController();

    keyboardVisibilityController.onChange.listen((bool visible) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      body: Container(
        padding: HakEdgeInsets.paddingDevice(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: HakColors.backgroundGradient,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildHeader(),
            _buildEmail(),
          ],
        ),
      ),
      floatingActionButton: _buildBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildHeader() {
    return HeaderRegister(title: 'Seja bem vindo');
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: HakTextField(
        labelText: '| E-mail',
      ),
    );
  }

  Widget _buildNext() {
    return ButtonsActionsWidget(
      onPressedNext: () async {
        await OnboardingRouters.goToValidatePhone();
      },
    );
  }

  Widget _buildBotton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildNext(),
        if (!keyboardVisibilityController.isVisible) FooterRegisterWidget(),
      ],
    );
  }
}
