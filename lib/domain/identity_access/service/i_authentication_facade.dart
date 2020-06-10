import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/password.dart';
import 'authentication_failure.dart';

abstract class IAuthenticationFacade {
  Future<Either<AuthenticationFailure, Unit>> registerUserWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> loginUserWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> loginUserWithGoogle();
}
