import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/age.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';

part 'register_account_state.freezed.dart';

@freezed
abstract class RegisterAccountState with _$RegisterAccountState {
  const factory RegisterAccountState({
    @required Name name,
    @required Password password,
    @required Password confirmPassword,
    @required EmailAddress emailAddress,
    @required Age age,
    @required bool showErrorMessage,
    @required bool obscureText,
  }) = _RegisterAccountState;

  factory RegisterAccountState.initial() {
    return RegisterAccountState(
      name: Name(''),
      password: Password(''),
      confirmPassword: Password(''),
      emailAddress: EmailAddress(''),
      age: Age(-1),
      showErrorMessage: false,
      obscureText: true,
    );
  }
}

