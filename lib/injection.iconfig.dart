// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:helloworld/infrastructure/auth/auth_facade_impl.dart';
import 'package:helloworld/domain/auth/i_auth_facade.dart';
import 'package:helloworld/application/auth/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<IAuthFacade>(() => AuthFacadeImpl());
  g.registerFactory<LoginBloc>(() => LoginBloc(g<IAuthFacade>()));
}
