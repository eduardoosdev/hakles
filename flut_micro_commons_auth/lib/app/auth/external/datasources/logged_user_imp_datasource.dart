import 'package:flut_micro_commons_auth/app/auth/domain/models/entities/current_user_entity.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flut_micro_commons_persist_firebase/app/persist_firebase/domain/models/entities/user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/logged_user_datasource.dart';

final $LoggedUserImpDatasource = Bind.singleton(
  (i) => LoggedUserImpDatasource(),
  export: true,
);

class LoggedUserImpDatasource implements LoggedUserDatasource {
  static CurrentUserEntity? _currentUser;

  static setCurrentUser(CurrentUserEntity currentUser) =>
      _currentUser = currentUser;

  @override
  Future<CurrentUserEntity?> call() async {
    if (FirebaseAuth.instance.currentUser == null) {
      return null;
    }

    _currentUser ??= await _getInstance();

    return _currentUser;
  }

  Future<CurrentUserEntity?> _getInstance() async {
    final UserEntity user = UserEntity();

    final collection = FirebaseFirestore.instance.collection(user.tableName);

    final result = await collection
        .where(
          user.email.key,
          isEqualTo: FirebaseAuth.instance.currentUser!.email,
        )
        .get();

    if (result.docs.isEmpty) {
      return null;
    }

    final current = CurrentUserEntity.fromJson(result.docs[0].data());

    return current;
  }
}
