import 'package:firebase_core/firebase_core.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
    LocalizationWidget(
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(
          initialRoute: '/',
        ),
      ),
    ),
  );
}
