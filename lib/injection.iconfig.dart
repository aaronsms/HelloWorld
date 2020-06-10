// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:helloworld/application/identity_access/login/login_bloc.dart';
import 'package:helloworld/domain/auth/i_auth_facade.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<LoginBloc>(() => LoginBloc(g<IAuthFacade>()));
}
