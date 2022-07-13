import '../../../../../flut_micro_commons_persist_firebase.dart';
import 'model_entity.dart';

class TypeProfileEntity extends ModelEntity {
  TypeProfileEntity();
  @override
  String get tableName => 'typeProfile';

  @override
  get persist => {
        id.key: id.value,
        name.key: name.value,
        userCreatedId.key: userCreatedId.value,
        global.key: global.value,
      };

  ModelColEntity name = ModelColEntity(
    'name',
    TypeColEnum.string,
  );

  ModelColEntity userCreatedId = ModelColEntity(
    'userCreatedId',
    TypeColEnum.string,
  );

//Variavel que indica se esse tipo de perfil esta aberto para todos os usuarios
//da base, ou somente para o usuario que criou
  ModelColEntity global = ModelColEntity(
    'global',
    TypeColEnum.bool,
    value: false,
  );

  TypeProfileEntity.fromJson(Map<String, dynamic> data) {
    id.value = data[id.value];
    name.value = data[name.value];
    userCreatedId.value = data[userCreatedId.value];
    global.value = data[global.value];
  }
}
