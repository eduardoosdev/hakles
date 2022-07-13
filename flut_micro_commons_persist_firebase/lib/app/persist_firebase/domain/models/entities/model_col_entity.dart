import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/enums/type_col_enum.dart';

class ModelColEntity {
  final String _key;
  final TypeColEnum _type;
  dynamic value;

  ModelColEntity(this._key, this._type, {this.value});

  String get key => _key;
  TypeColEnum get type => _type;
}
