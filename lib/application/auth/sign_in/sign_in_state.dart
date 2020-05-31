import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/auth/auth_failure.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/password.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isSubmitting,
    @required bool showError,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      isSubmitting: false,
      showError: false,
      authFailureOrSuccessOption: None());
}
