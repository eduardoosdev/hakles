import 'package:flut_micro_app_onboarding/app/onboarding/onboarding_routers.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/arguments/finish_auth.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Observer(
        builder: (_) {
          if (controller.loading) {
            return Center(
              child: HakProgress(),
            );
          }

          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: HakColors.backgroundGradient,
            ),
            child: Column(
         
              children: [
                _buildHeader(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Text(
              'Faça o seu login atraves da sua conta Google',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: HakColors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: HakButton(
              type: HakButtonType.google,
              onPressed: () async {
                final response = await controller.authGoogle();

                if (!response.success) {
                  HakSnackbar.error(
                    context: context,
                    message: response.message,
                    scaffoldKey: scaffoldKey,
                  );
                  return;
                }
                if (controller.currentUser?.phoneNumber.value == null) {
                  final result = await OnboardingRouters.goToValidatePhone();
                  if (result is FinishAuth) OnboardingRouters.pop(result);
                } else {
                  OnboardingRouters.pop();
                }
              },
            ),
          ),
          FooterRegisterWidget(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:100.0,bottom: 50),
          child: Text('Logo'),
        ),
        Text(
          'Bem vindo',
          style: Theme.of(context).textTheme.headline5?.copyWith
          (color: HakColors.white),
        ),
      ],
    );
  }
}