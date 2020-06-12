// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterUserWithEmailAndPasswordPressed registerUserWithEmailAndPassword() {
    return const RegisterUserWithEmailAndPasswordPressed();
  }

  LoginUserWithEmailAndPassword loginUserWithEmailAndPassword() {
    return const LoginUserWithEmailAndPassword();
  }

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterUserWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterUserWithEmailAndPasswordPressedCopyWith(
          RegisterUserWithEmailAndPasswordPressed value,
          $Res Function(RegisterUserWithEmailAndPasswordPressed) then) =
      _$RegisterUserWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterUserWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RegisterUserWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterUserWithEmailAndPasswordPressedCopyWithImpl(
      RegisterUserWithEmailAndPasswordPressed _value,
      $Res Function(RegisterUserWithEmailAndPasswordPressed) _then)
      : super(
            _value, (v) => _then(v as RegisterUserWithEmailAndPasswordPressed));

  @override
  RegisterUserWithEmailAndPasswordPressed get _value =>
      super._value as RegisterUserWithEmailAndPasswordPressed;
}

class _$RegisterUserWithEmailAndPasswordPressed
    implements RegisterUserWithEmailAndPasswordPressed {
  const _$RegisterUserWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.registerUserWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return registerUserWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUserWithEmailAndPassword != null) {
      return registerUserWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return registerUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUserWithEmailAndPassword != null) {
      return registerUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterUserWithEmailAndPasswordPressed implements LoginEvent {
  const factory RegisterUserWithEmailAndPasswordPressed() =
      _$RegisterUserWithEmailAndPasswordPressed;
}

abstract class $LoginUserWithEmailAndPasswordCopyWith<$Res> {
  factory $LoginUserWithEmailAndPasswordCopyWith(
          LoginUserWithEmailAndPassword value,
          $Res Function(LoginUserWithEmailAndPassword) then) =
      _$LoginUserWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$LoginUserWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginUserWithEmailAndPasswordCopyWith<$Res> {
  _$LoginUserWithEmailAndPasswordCopyWithImpl(
      LoginUserWithEmailAndPassword _value,
      $Res Function(LoginUserWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as LoginUserWithEmailAndPassword));

  @override
  LoginUserWithEmailAndPassword get _value =>
      super._value as LoginUserWithEmailAndPassword;
}

class _$LoginUserWithEmailAndPassword implements LoginUserWithEmailAndPassword {
  const _$LoginUserWithEmailAndPassword();

  @override
  String toString() {
    return 'LoginEvent.loginUserWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginUserWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return loginUserWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginUserWithEmailAndPassword != null) {
      return loginUserWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return loginUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginUserWithEmailAndPassword != null) {
      return loginUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginUserWithEmailAndPassword implements LoginEvent {
  const factory LoginUserWithEmailAndPassword() =
      _$LoginUserWithEmailAndPassword;
}

abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'LoginEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerUserWithEmailAndPassword(),
    @required Result loginUserWithEmailAndPassword(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerUserWithEmailAndPassword(),
    Result loginUserWithEmailAndPassword(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPasswordPressed value),
    @required
        Result loginUserWithEmailAndPassword(
            LoginUserWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(loginUserWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPasswordPressed value),
    Result loginUserWithEmailAndPassword(LoginUserWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements LoginEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}
