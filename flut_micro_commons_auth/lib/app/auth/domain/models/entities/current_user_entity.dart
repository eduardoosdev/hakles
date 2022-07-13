import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/entities/user_entity.dart';

class CurrentUserEntity extends UserEntity {
  CurrentUserEntity();

  CurrentUserEntity.fromJson(Map<String, dynamic> data) {
    super.fromJson(data);
  }

  CurrentUserEntity.fromUserFirebase(User authUser) {
    super.fromUserFirebase(authUser);
  }

  CurrentUserEntity.fromUserEntity(UserEntity user) {
    super.fromUserEntity(user);
  }

  @override
  String toString() {
    return '${displayName.value}, email: ${email.value}, phoneNumber: ${phoneNumber.value}';
  }
}
