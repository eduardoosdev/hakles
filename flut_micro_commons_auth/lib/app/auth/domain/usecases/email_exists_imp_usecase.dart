import 'package:flutter_modular/flutter_modular.dart';

import '../repositories/email_exists_repository.dart';
import 'email_exists_usecase.dart';

final $EmailExistsImpUsecase = Bind.singleton(
  (i) => EmailExistsImpUsecase(i.get()),
  export: true,
);

class EmailExistsImpUsecase implements EmailExistsUsecase {
  final EmailExistsRepository _emailExistsRepository;

  EmailExistsImpUsecase(EmailExistsRepository emailExistsRepository)
      : _emailExistsRepository = emailExistsRepository;

  @override
  Future<void> call(String email) {
    return _emailExistsRepository(email);
  }
}
