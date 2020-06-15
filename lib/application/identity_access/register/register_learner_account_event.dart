import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_learner_account_event.freezed.dart';

@freezed
abstract class RegisterLearnerAccountEvent with _$RegisterLearnerAccountEvent {
  const factory RegisterLearnerAccountEvent.nameChanged(String nameStr) =
      NameChanged;
  const factory RegisterLearnerAccountEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterLearnerAccountEvent.confirmPasswordChanged(
      String confirmPasswordStr) = ConfirmPasswordChanged;
  const factory RegisterLearnerAccountEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory RegisterLearnerAccountEvent.ageChanged(String ageStr) =
      AgeChanged;
  const factory RegisterLearnerAccountEvent.nextClicked() = NextClicked;
  const factory RegisterLearnerAccountEvent.obscureTextClicked() = ObscureTextClicked;
}
