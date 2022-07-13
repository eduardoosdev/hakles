import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/enums/type_col_enum.dart';

import 'model_col_entity.dart';

abstract class ModelEntity {
  String get tableName;

  get persist;

  ModelColEntity id = ModelColEntity('id', TypeColEnum.string);
  ModelColEntity createAt = ModelColEntity('createAt', TypeColEnum.date);
  ModelColEntity updateAt = ModelColEntity('updateAt', TypeColEnum.date);
}
