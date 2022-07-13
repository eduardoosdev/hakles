import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/logout_google_datasource.dart';

final $LogoutImpDatasource = Bind.singleton(
  (i) => LogoutImpDatasource(),
  export: true,
);

class LogoutImpDatasource implements LogoutGoogleDatasource {
  @override
  Future<void> call() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
