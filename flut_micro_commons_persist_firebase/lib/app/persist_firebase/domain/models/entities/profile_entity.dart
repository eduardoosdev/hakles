import '../../../../../flut_micro_commons_persist_firebase.dart';
import 'model_entity.dart';

class ProfileEntity extends ModelEntity {
  ProfileEntity();
  @override
  String get tableName => 'profile';

  @override
  get persist => {
        id.key: id.value,
        nick.key: nick.value,
        userId.key: userId.value,
        typeProfileId.key: typeProfileId.value,
      };

  ModelColEntity nick = ModelColEntity(
    'nick',
    TypeColEnum.string,
  );

  ModelColEntity userId = ModelColEntity(
    'userId',
    TypeColEnum.string,
  );

  ModelColEntity typeProfileId = ModelColEntity(
    'typeProfileId',
    TypeColEnum.string,
  );

  ProfileEntity.fromJson(Map<String, dynamic> data) {
    id.value = data[id.key];
    nick.value = data[nick.key];
    userId.value = data[userId.key];
    typeProfileId.value = data[typeProfileId.key];
  }
}
