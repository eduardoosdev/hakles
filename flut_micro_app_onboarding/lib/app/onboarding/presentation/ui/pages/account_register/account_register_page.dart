import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import '../../../../onboarding_routers.dart';
import 'account_register_controller.dart';

class AccountRegisterPage extends StatefulWidget {
  @override
  _AccountRegisterPageState createState() => _AccountRegisterPageState();
}

class _AccountRegisterPageState
    extends ModularState<AccountRegisterPage, AccountRegisterController> {
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
                  _buildName(),
                  _buildEmail(),
                  _buildNext(),
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
    return HeaderRegister(title: 'Seja bem vindo');
  }

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: HakTextField(
        labelText: '| Nome',
      ),
    );
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

  Container _buildNext() {
    return Container(
      padding: EdgeInsets.only(
        top: 16.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          HakButton(
            text: 'Próximo',
            onPressed: () async {
              await OnboardingRouters.goToValidatePhone();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBotton() {
    return FooterRegisterWidget();
  }
}
