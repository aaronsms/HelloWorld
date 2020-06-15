import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'authentication_failure.dart';

abstract class IAuthenticationFacade {
  Future<Either<AuthenticationFailure, Unit>> loginUserWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> loginUserWithGoogle();
}
