import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/email_exists_repository.dart';
import '../datasources/email_exists_datasource.dart';

final $EmailExistsImpRepository = Bind.singleton(
  (i) => EmailExistsImpRepository(i.get()),
  export: true,
);

class EmailExistsImpRepository implements EmailExistsRepository {
  final EmailExistsDatasource _emailExistsDatasource;

  EmailExistsImpRepository(EmailExistsDatasource emailExistsDatasource)
      : _emailExistsDatasource = emailExistsDatasource;

  @override
  Future<void> call(String email) {
    return _emailExistsDatasource(email);
  }
}
