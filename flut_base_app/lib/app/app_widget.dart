import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import 'presentation/controllers/app_controller.dart';

class AppWidget extends StatefulWidget {
  final String initialRoute;

  AppWidget({required this.initialRoute});

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  @override
  void initState() {
    super.initState();

    controller.loadLangs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      initialRoute: widget.initialRoute,
      theme: ThemeData(
        primarySwatch: HakColors.primary,
        buttonTheme: ButtonThemeData(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
              bottomLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              ),
            ),
            primary: HakColors.primary[500],
          ),
        ),
        textTheme: _buildTextTheme(),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
    ).modular();
  }

  TextTheme _buildTextTheme() {
    return TextTheme(
      subtitle1: TextStyle(
        color: HakColors.hak,
        fontSize: 16.0,
        letterSpacing: 0.15,
      ),
      headline2: TextStyle(
        color: HakColors.primary,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.15,
      ),
      headline3: TextStyle(
        color: HakColors.primaryVariant,
        fontSize: 20.0,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: HakColors.primaryVariant,
        fontSize: 16.0,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
