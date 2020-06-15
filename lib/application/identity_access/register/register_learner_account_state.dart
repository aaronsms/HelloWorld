import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/age.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';

part 'register_learner_account_state.freezed.dart';

@freezed
abstract class RegisterLearnerAccountState with _$RegisterLearnerAccountState {
  const factory RegisterLearnerAccountState({
    @required Name name,
    @required Password password,
    @required Password confirmPassword,
    @required EmailAddress emailAddress,
    @required Age age,
    @required bool showErrorMessage,
    @required bool obscureText,
  }) = _RegisterLearnerAccountState;

  factory RegisterLearnerAccountState.initial() {
    return RegisterLearnerAccountState(
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

