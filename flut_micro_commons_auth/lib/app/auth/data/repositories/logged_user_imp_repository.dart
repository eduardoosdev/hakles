import 'package:flut_micro_commons_auth/app/auth/data/datasources/logged_user_datasource.dart';
import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/logged_user_repository.dart';

final $LoggedUserImpRepository = Bind.singleton(
  (i) => LoggedUserImpRepository(i.get()),
  export: true,
);

class LoggedUserImpRepository implements LoggedUserRepository {
  final LoggedUserDatasource _loggedUserDatasource;

  LoggedUserImpRepository(this._loggedUserDatasource);

  @override
  Future<CurrentUserEntity?> call() {
    return _loggedUserDatasource();
  }
}
