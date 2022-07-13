import 'package:enum_to_string/enum_to_string.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/enums/type_col_enum.dart';
import 'model_col_entity.dart';
import 'model_entity.dart';

class UserEntity extends ModelEntity {
  UserEntity();
  @override
  String get tableName => 'user';

  @override
  get persist => {
        displayName.key: displayName.value,
        email.key: email.value,
        emailVerified.key: emailVerified.value,
        image.key: image.value,
        typeAccess.key: typeAccess.value == null
            ? null
            : EnumToString.convertToString(typeAccess.value),
        phoneNumber.key: phoneNumber.value,
        id.key: id.value,
      };

  ModelColEntity displayName = ModelColEntity(
    'displayName',
    TypeColEnum.string,
  );
  ModelColEntity email = ModelColEntity(
    'email',
    TypeColEnum.string,
  );
  ModelColEntity emailVerified = ModelColEntity(
    'emailVerified',
    TypeColEnum.bool,
  );
  ModelColEntity image = ModelColEntity(
    'image',
    TypeColEnum.string,
  );
  ModelColEntity typeAccess = ModelColEntity(
    'typeAccess',
    TypeColEnum.enums,
  );
  ModelColEntity phoneNumber = ModelColEntity(
    'phoneNumber',
    TypeColEnum.string,
  );

  fromUserFirebase(User authUser) {
    displayName.value = authUser.displayName;
    email.value = authUser.email;
    emailVerified.value = authUser.emailVerified;
    image.value = authUser.photoURL;
    phoneNumber.value = authUser.phoneNumber;
    return this;
  }

  fromUserEntity(UserEntity user) {
    displayName = user.displayName;
    email = user.email;
    emailVerified = user.emailVerified;
    image = user.image;
    typeAccess = user.typeAccess;
    phoneNumber = user.phoneNumber;
    return this;
  }

  fromJson(Map<String, dynamic> data) {
    displayName.value = data['displayName'];
    email.value = data['email'];
    emailVerified.value = data['emailVerified'];
    image.value = data['image'];
    id.value = data['id'];
    phoneNumber.value = data['phoneNumber'];
    typeAccess.value = typeAccess.value == null
        ? null
        : EnumToString.fromString(typeAccess.value, data['typeAccess']);
    return this;
  }
}
