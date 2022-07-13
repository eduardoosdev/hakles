import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';

abstract class LoggedUserDatasource {
  Future<CurrentUserEntity?> call();
}
  