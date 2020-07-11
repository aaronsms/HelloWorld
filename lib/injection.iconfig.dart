// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:helloworld/infrastructure/identity_access/authentication_facade.dart';
import 'package:helloworld/domain/identity_access/service/i_authentication_facade.dart';
import 'package:helloworld/infrastructure/identity_access/user_repository.dart';
import 'package:helloworld/domain/identity_access/service/i_user_repository.dart';
import 'package:helloworld/application/identity_access/login/login_bloc.dart';
import 'package:helloworld/application/identity_access/register/account/register_account_bloc.dart';
import 'package:helloworld/domain/identity_access/service/registration_service.dart';
import 'package:helloworld/domain/identity_access/service/i_registration_service.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<IAuthenticationFacade>(() => AuthenticationFacade());
  g.registerLazySingleton<IUserRepository>(() => UserRepository());
  g.registerFactory<LoginBloc>(() => LoginBloc(g<IAuthenticationFacade>()));
  g.registerFactoryParam<RegisterAccountBloc, bool, dynamic>(
      (isMentorOrLearner, _) =>
          RegisterAccountBloc(isMentorOrLearner: isMentorOrLearner));
  g.registerLazySingleton<IRegistrationService>(
      () => RegistrationService(g<IUserRepository>()));
  g.registerFactory<RegisterProfileBloc>(
      () => RegisterProfileBloc(g<IRegistrationService>()));
}
