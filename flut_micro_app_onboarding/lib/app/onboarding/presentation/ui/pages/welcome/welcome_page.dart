import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import 'package:recase/recase.dart';

import 'welcome_controller.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends ModularState<WelcomePage, WelcomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: _buildHeader(),
            ),
            Expanded(
              child: _buildBody(),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Column _buildHeader() {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: Text('Logo'),
        ),
        Text('Bem vindo'),
      ],
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HakTextField(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HakTextField(
            helperText: "helperText",
            labelText: "labelText",
          ),
        ),
      ],
    );
  }

  Column _buildFooter() {
    return Column(
      children: [
        HakButton(
          text: 'Entrar',
        ),
        Text('Ou'),
        HakButton(
          text: 'Criar conta'.titleCase,
        ),
      ],
    );
  }
}

class HakTextFielde extends StatelessWidget {
  const HakTextFielde({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: 'Password',
      ),
    );
  }
}
