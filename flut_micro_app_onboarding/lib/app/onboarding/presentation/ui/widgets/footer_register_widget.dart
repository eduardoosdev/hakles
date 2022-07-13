import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class FooterRegisterWidget extends StatelessWidget {
  const FooterRegisterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 48,
        right: 24,
        left: 24,
        bottom: 48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Novo por aqui? ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                        ),
                  ),
                  TextSpan(
                    text: 'Crie agora seu perfil',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 16,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ao criar uma conta aceito os ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                        ),
                  ),
                  TextSpan(
                    text: 'Termos e condições ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: ' e autorizo o uso de meus dados de acordo com a ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                        ),
                  ),
                  TextSpan(
                    text: 'Declaração de privacidade.',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: HakColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
