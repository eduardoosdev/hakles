import 'package:flutter_modular/flutter_modular.dart';

import '../repositories/logout_google_repository.dart';
import 'logout_google_usecase.dart';

final $LogoutImpUsecase = Bind.singleton(
  (i) => LogoutImpUsecase(i.get()),
  export: true,
);

class LogoutImpUsecase implements LogoutUsecase {
  final LogoutRepository _logoutRepository;

  LogoutImpUsecase(LogoutRepository logoutRepository)
      : _logoutRepository = logoutRepository;

  @override
  Future<void> call() {
    return _logoutRepository();
  }
}
