import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import '../../../../onboarding_routers.dart';
import 'password_register_controller.dart';

class PasswordRegisterPage extends StatefulWidget {
  @override
  _PasswordRegisterPageState createState() => _PasswordRegisterPageState();
}

class _PasswordRegisterPageState
    extends ModularState<PasswordRegisterPage, PasswordRegisterController> {
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
                  _builPassword(),
                  _builRepeatePassword(),
                  _buildButtonsActions(),
                ],
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _builPassword() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: HakTextFieldPassword(
        controller: controller.passwordController,
        labelText: 'Senha',
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (text) {},
      ),
    );
  }

  Widget _builRepeatePassword() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: HakTextFieldPassword(
        controller: controller.repeatePasswordController,
        labelText: 'Repetir Senha',
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (text) {},
      ),
    );
  }

  Widget _buildButtonsActions() {
    return Observer(
      builder: (_) {
        return ButtonsActionsWidget(
          loading: controller.loading,
          onPressedBack: () {
            OnboardingRouters.pop();
          },
          onPressedNext: () async {
            FocusScope.of(context).requestFocus(FocusNode());
            final result = await controller.createAccount();
            if (!result.success) {
              HakSnackbar.error(
                context: context,
                message: result.message,
                scaffoldKey: scaffoldKey,
              );
              return;
            }

            OnboardingRouters.goToChooseProfileRegister();
          },
        );
      },
    );
  }

  Widget _buildFooter() {
    return FooterRegisterWidget();
  }

  Widget _buildHeader() {
    return HeaderRegister(title: 'Autentique seu telefone');
  }
}
