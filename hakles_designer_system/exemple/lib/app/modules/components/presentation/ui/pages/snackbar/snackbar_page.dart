import 'package:exemple/app/modules/components/data/models/dto/atribute_dto.dart';
import 'package:exemple/app/modules/components/presentation/ui/base/component_base_page.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class SnackbarPage extends StatefulWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  _SnackbarPageState createState() => _SnackbarPageState();
}

class _SnackbarPageState extends ComponentBasePage {
  final GlobalKey<ScaffoldState> scaffoldKeySnack =
      new GlobalKey<ScaffoldState>();
  List<AtributeDto> listAtributs = [
    AtributeDto(
      type: 'String',
      name: 'title',
      value: 'Button',
    ),
    AtributeDto(
      type: 'function',
      name: 'onPressed',
      value: '''() {
        HakSnackbar.success(
          context: context,
          message: 'Lorem ipsum dolor sit amet',
          scaffoldKey: scaffoldKey,
        );

        HakSnackbar.info(
          context: context,
          message: 'Lorem ipsum dolor sit amet',
          scaffoldKey: scaffoldKey,
        );

        HakSnackbar.error(
          context: context,
          message: 'Lorem ipsum dolor sit amet',
          scaffoldKey: scaffoldKey,
        );
      }''',
    ),
  ];

  @override
  List<AtributeDto> atributs() {
    return listAtributs;
  }

  @override
  Widget buildComponentWidget() {
    return Expanded(
      child: Scaffold(
        key: scaffoldKeySnack,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HakButton(
                onPressed: () {
                  HakSnackbar.success(
                    context: context,
                    message: 'Lorem ipsum dolor sit amet',
                    scaffoldKey: scaffoldKeySnack,
                  );
                },
                text: 'Sucesso',
              ),
              SizedBox(height: 16),
              HakButton(
                onPressed: () {
                  HakSnackbar.info(
                    context: context,
                    message: 'Lorem ipsum dolor sit amet',
                    scaffoldKey: scaffoldKeySnack,
                  );
                },
                text: 'Info',
              ),
              SizedBox(height: 16),
              HakButton(
                onPressed: () {
                  HakSnackbar.error(
                    context: context,
                    message: 'Lorem ipsum dolor sit amet',
                    scaffoldKey: scaffoldKeySnack,
                  );
                },
                text: 'Erro',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  String description() {
    return 'Os botões permitem que os usuários realizem ações e façam escolhas com um único toque.';
  }

  @override
  Widget instanceComponentWidget() {
    return HakButton(
      onPressed: () {
        HakSnackbar.success(
          context: context,
          message: 'message',
          scaffoldKey: scaffoldKey,
        );
      },
    );
  }

  @override
  String title() {
    return 'HakSnackbar';
  }

  @override
  void onUpdateAtributs(List<AtributeDto> atributs) {
    setState(() {
      this.listAtributs = atributs;
    });
  }
}
