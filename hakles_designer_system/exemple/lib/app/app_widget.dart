import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hakles Designer System',
      theme: hakTheme(),
      initialRoute: '/home/menu/dashboard',
    ).modular();
  }

  ThemeData hakTheme() {
    return ThemeData(
      primarySwatch: HakColors.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: HakColors.primary[500],
          textStyle: TextStyle(
            color: HakColors.primaryVariant,
          ),
        ),
      ),
    );
  }
}
