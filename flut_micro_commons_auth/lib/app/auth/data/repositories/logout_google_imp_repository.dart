import 'package:flut_micro_commons_auth/app/auth/data/datasources/logout_google_datasource.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/logout_google_repository.dart';

final $LogoutImpRepository = Bind.singleton(
  (i) => LogoutImpRepository(i.get()),
  export: true,
);

class LogoutImpRepository implements LogoutRepository {
  final LogoutGoogleDatasource _logoutDatasource;

  LogoutImpRepository(this._logoutDatasource);
  
  @override
  Future<void> call() {
    return _logoutDatasource();
  }
}
