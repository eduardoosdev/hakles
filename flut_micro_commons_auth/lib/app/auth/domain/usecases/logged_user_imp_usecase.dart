import 'package:flut_micro_commons_auth/app/auth/data/repositories/logged_user_imp_repository.dart';
import 'package:flut_micro_commons_auth/flut_micro_commons_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'logged_user_usecase.dart';

final $LoggedUserImpUsecase = Bind.singleton(
  (i) => LoggedUserImpUsecase(i.get()),
  export: true,
);

class LoggedUserImpUsecase implements LoggedUserUsecase {
  final LoggedUserImpRepository _loggedUserImpRepository;

  LoggedUserImpUsecase(this._loggedUserImpRepository);
  @override
  Future<CurrentUserEntity?> call() {
    return _loggedUserImpRepository();
  }
}
