import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/arguments/finish_auth.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/buttons_actions_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/footer_register_widget.dart';
import 'package:flut_micro_app_onboarding/app/onboarding/presentation/ui/widgets/header_register_widget.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/verification_phone_number_entity.dart';
import 'package:flut_micro_commons_auth/flut_micro_commons_auth.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../onboarding_routers.dart';
import 'validate_phone_controller.dart';

class ValidatePhonePage extends StatefulWidget {
  @override
  _ValidatePhonePageState createState() => _ValidatePhonePageState();
}

class _ValidatePhonePageState
    extends ModularState<ValidatePhonePage, ValidatePhoneController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKeySheet = GlobalKey<ScaffoldState>();

  final countdownController = CountdownController();
  final phoneNumberController = TextEditingController();
  final pinCodeController = TextEditingController();

  int tokenSecondsToExpire = 60 * 2;
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
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildHeader(),
                  _builPhoneNumber(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _builPhoneNumber() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: HakTextField(
        controller: phoneNumberController,
        inputFormatters: [MaskFormatterUtils.cellPhone()],
        labelText: '+ 55 __ ____ ____',
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        onChanged: (text) {
          final phoneNumberValid = RegexUtils.isValidCellPhone(text);
          controller.setPhoneNumberValid(phoneNumberValid);
        },
      ),
    );
  }

  Widget _buildButtonsActions() {
    return Observer(
      builder: (_) {
        return ButtonsActionsWidget(
          enabledNext: controller.phoneNumberValid,
          loading: controller.loadingGenerateTokenPhoneNumber,
          onPressedBack: () {
            OnboardingRouters.pop();
          },
          onPressedNext: () async {
            FocusScope.of(context).requestFocus(FocusNode());

            await _generateToken();

            _showSheetValidCellPhoneNumber(
              phoneNumberController.text.trim(),
              tokenSecondsToExpire,
            );
          },
        );
      },
    );
  }

  Widget _buildFooter() {
    return FooterRegisterWidget();
  }

  void _showSheetValidCellPhoneNumber(
    String phoneNumber,
    int tokenSecondsToExpire,
  ) {
    HakBottomSheet.showCustom(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height - 42,
          padding: HakEdgeInsets.paddingDevice(context),
          child: Scaffold(
            key: scaffoldKeySheet,
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    'Insira o código enviado por SMS',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: HakPinCodeTextField(
                    length: 6,
                    onCompleted: (String token) async {
                      await controller.validateToken(
                        token,
                      );

                      Modular.to.pop(FinishAuth());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Container(
                    height: 1,
                    width: double.maxFinite,
                    color: HakColors.primary,
                  ),
                ),
                Column(
                  children: [
                    Observer(
                      builder: (_) {
                        if (controller.messageErrorValidToken == null) {
                          return Container();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 24,
                          ),
                          child: Column(
                            children: [
                              Text(
                                controller.messageErrorValidToken!,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: HakColors.error),
                              ),
                              HakButton(
                                text: 'Pular etapa',
                                onPressed: () {
                                  OnboardingRouters.pop(FinishAuth());
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                      ),
                      child: Text(
                        'Foi enviado um token para o numero $phoneNumber',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Countdown(
                        controller: countdownController,
                        seconds: tokenSecondsToExpire,
                        build: (BuildContext context, double time) {
                          return Text(
                            'O token expira em ${parseToTimes(time)}',
                          );
                        },
                        interval: Duration(milliseconds: 100),
                        onFinished: () {
                          controller.setCanRestart(true);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Observer(
                          builder: (_) {
                            return HakButton(
                              loading:
                                  controller.loadingGenerateTokenPhoneNumber ||
                                      controller.loadingValidPhoneNumber,
                              enabled: controller.canRestart,
                              text: 'Gerar um novo token',
                              type: HakButtonType.text,
                              onPressed: () async {
                                await _generateToken();

                                countdownController.restart();
                              },
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
    Future.delayed(Duration(milliseconds: 500))
        .then((value) => countdownController.start());
  }

  String parseToTimes(double decimalValue) {
    final dat = DateTime(
      DateTime.now().year,
      1,
      1,
      0,
      0,
      decimalValue.toInt(),
    );

    return dat.format('mm:ss');
  }

  Widget _buildHeader() {
    return HeaderRegister(title: 'Autentique seu telefone');
  }

  Widget _buildBotton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButtonsActions(),
        if (!keyboardVisibilityController.isVisible) FooterRegisterWidget(),
      ],
    );
  }

  Future<void> _generateToken() async {
    final phoneNumber =
        '+55${phoneNumberController.text.trim().justTheNumbers()}';
    await controller.generateToken(
      VerificationPhoneNumberEntity(
        phoneNumber: phoneNumber,
        timeout: Duration(seconds: tokenSecondsToExpire),
        verificationCompleted: (CurrentUserEntity currentUser) {
          Modular.to.pop(FinishAuth());
        },
        verificationFailed: (e) {
          controller.setMessageErrorValidToken(e.toString());
        },
      ),
    );
  }
}
