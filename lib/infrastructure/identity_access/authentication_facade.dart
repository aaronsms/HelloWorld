import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/domain/identity_access/service/authentication_failure.dart';
import 'package:helloworld/domain/identity_access/service/i_authentication_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthenticationFacade)
class AuthenticationFacade implements IAuthenticationFacade {
  @override
  Future<Either<AuthenticationFailure, Unit>> loginUserWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    return const Right(unit);
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> loginUserWithGoogle() async {
    return const Right(unit);
  }
}
