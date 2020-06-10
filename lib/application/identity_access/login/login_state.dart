import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/auth/auth_failure.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/password.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessage,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      isSubmitting: false,
      showErrorMessage: false,
      authFailureOrSuccessOption: None());
}
