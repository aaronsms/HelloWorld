import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_account_event.freezed.dart';

@freezed
abstract class RegisterAccountEvent with _$RegisterAccountEvent {
  const factory RegisterAccountEvent.nameChanged(String nameStr) =
      NameChanged;
  const factory RegisterAccountEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterAccountEvent.confirmPasswordChanged(
      String confirmPasswordStr) = ConfirmPasswordChanged;
  const factory RegisterAccountEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory RegisterAccountEvent.ageChanged(String ageStr) =
      AgeChanged;
  const factory RegisterAccountEvent.nextClicked() = NextClicked;
  const factory RegisterAccountEvent.obscureTextClicked() = ObscureTextClicked;
}
