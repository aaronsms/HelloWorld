import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:helloworld/domain/auth/auth_failure.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/i_auth_facade.dart';
import 'package:helloworld/domain/auth/password.dart';
import 'package:helloworld/infrastructure/auth/i_auth_data_source.dart';

class AuthFacadeImpl implements IAuthFacade {
  final IAuthDataSource _authDataSource;
  final GoogleSignIn _googleSignIn;

  AuthFacadeImpl(this._authDataSource, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    // TODO: implement registerWithEmailAndPassword
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    // TODO: implement signInWithEmailAndPassword
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return left(const AuthFailure.cancelledByUser());
    } else {
      return right(unit);
    }
  }
}
