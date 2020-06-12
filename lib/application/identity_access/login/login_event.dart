import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String emailStr) = EmailChanged;
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory LoginEvent.registerUserWithEmailAndPassword() =
      RegisterUserWithEmailAndPasswordPressed;
  const factory LoginEvent.loginUserWithEmailAndPassword() =
      LoginUserWithEmailAndPassword;
  const factory LoginEvent.signInWithGoogle() = SignInWithGoogle;
}
