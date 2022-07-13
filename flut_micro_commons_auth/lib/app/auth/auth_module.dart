import 'package:flutter_modular/flutter_modular.dart';
import 'external/datasources/sign_in_with_google_imp_datasource.dart';
import 'data/repositories/sign_in_with_google_imp_repository.dart';
import 'domain/usecases/sign_in_with_google_imp_usecase.dart';
import 'external/datasources/sign_in_with_email_imp_datasource.dart';
import 'data/repositories/sign_in_with_email_imp_repository.dart';
import 'domain/usecases/sign_in_with_email_imp_usecase.dart';
import 'external/datasources/sign_in_with_phone_imp_datasource.dart';
import 'data/repositories/sign_in_with_phone_imp_repository.dart';
import 'domain/usecases/sign_in_with_phone_imp_usecase.dart';
import 'external/datasources/email_exists_imp_datasource.dart';
import 'data/repositories/email_exists_imp_repository.dart';
import 'domain/usecases/email_exists_imp_usecase.dart';
import 'domain/usecases/logout_google_imp_usecase.dart';
import 'external/datasources/logged_user_imp_datasource.dart';
import 'data/repositories/logged_user_imp_repository.dart';
import 'domain/usecases/logged_user_imp_usecase.dart';
import 'external/datasources/logout_imp_datasource.dart';
import 'data/repositories/logout_google_imp_repository.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases
		$SignInWithGoogleImpUsecase,
		$SignInWithEmailImpUsecase,
		$SignInWithPhoneImpUsecase,
		$EmailExistsImpUsecase,
		$LogoutImpUsecase,
		$LoggedUserImpUsecase,

    //Repositories
		$SignInWithGoogleImpRepository,
		$SignInWithEmailImpRepository,
		$SignInWithPhoneImpRepository,
		$EmailExistsImpRepository,
		$LoggedUserImpRepository,
		$LogoutImpRepository,

    //Datasources
		$SignInWithGoogleImpDatasource,
		$SignInWithEmailImpDatasource,
		$SignInWithPhoneImpDatasource,
		$EmailExistsImpDatasource,
		$LoggedUserImpDatasource,
		$LogoutImpDatasource,
      
    //Controllers
  ];

  @override
  final List<ModularRoute> routes = [
    //Pages
  ];
}
