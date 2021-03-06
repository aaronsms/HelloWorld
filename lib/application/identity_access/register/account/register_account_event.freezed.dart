// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterAccountEventTearOff {
  const _$RegisterAccountEventTearOff();

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  ConfirmPasswordChanged confirmPasswordChanged(String confirmPasswordStr) {
    return ConfirmPasswordChanged(
      confirmPasswordStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  AgeChanged ageChanged(String ageStr) {
    return AgeChanged(
      ageStr,
    );
  }

  NextClicked nextClicked(BuildContext context) {
    return NextClicked(
      context,
    );
  }

  ObscureTextClicked obscureTextClicked() {
    return const ObscureTextClicked();
  }
}

// ignore: unused_element
const $RegisterAccountEvent = _$RegisterAccountEventTearOff();

mixin _$RegisterAccountEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  });
}

abstract class $RegisterAccountEventCopyWith<$Res> {
  factory $RegisterAccountEventCopyWith(RegisterAccountEvent value,
          $Res Function(RegisterAccountEvent) then) =
      _$RegisterAccountEventCopyWithImpl<$Res>;
}

class _$RegisterAccountEventCopyWithImpl<$Res>
    implements $RegisterAccountEventCopyWith<$Res> {
  _$RegisterAccountEventCopyWithImpl(this._value, this._then);

  final RegisterAccountEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterAccountEvent) _then;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

class _$NameChangedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

class _$NameChanged with DiagnosticableTreeMixin implements NameChanged {
  const _$NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAccountEvent.nameChanged'))
      ..add(DiagnosticsProperty('nameStr', nameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegisterAccountEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
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

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAccountEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
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
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
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
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterAccountEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPasswordStr});
}

class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object confirmPasswordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPasswordStr == freezed
          ? _value.confirmPasswordStr
          : confirmPasswordStr as String,
    ));
  }
}

class _$ConfirmPasswordChanged
    with DiagnosticableTreeMixin
    implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr)
      : assert(confirmPasswordStr != null);

  @override
  final String confirmPasswordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterAccountEvent.confirmPasswordChanged'))
      ..add(DiagnosticsProperty('confirmPasswordStr', confirmPasswordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPasswordStr, confirmPasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPasswordStr);

  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements RegisterAccountEvent {
  const factory ConfirmPasswordChanged(String confirmPasswordStr) =
      _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
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

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAccountEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
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
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
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
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterAccountEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $AgeChangedCopyWith<$Res> {
  factory $AgeChangedCopyWith(
          AgeChanged value, $Res Function(AgeChanged) then) =
      _$AgeChangedCopyWithImpl<$Res>;
  $Res call({String ageStr});
}

class _$AgeChangedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
    implements $AgeChangedCopyWith<$Res> {
  _$AgeChangedCopyWithImpl(AgeChanged _value, $Res Function(AgeChanged) _then)
      : super(_value, (v) => _then(v as AgeChanged));

  @override
  AgeChanged get _value => super._value as AgeChanged;

  @override
  $Res call({
    Object ageStr = freezed,
  }) {
    return _then(AgeChanged(
      ageStr == freezed ? _value.ageStr : ageStr as String,
    ));
  }
}

class _$AgeChanged with DiagnosticableTreeMixin implements AgeChanged {
  const _$AgeChanged(this.ageStr) : assert(ageStr != null);

  @override
  final String ageStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.ageChanged(ageStr: $ageStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAccountEvent.ageChanged'))
      ..add(DiagnosticsProperty('ageStr', ageStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgeChanged &&
            (identical(other.ageStr, ageStr) ||
                const DeepCollectionEquality().equals(other.ageStr, ageStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ageStr);

  @override
  $AgeChangedCopyWith<AgeChanged> get copyWith =>
      _$AgeChangedCopyWithImpl<AgeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return ageChanged(ageStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageChanged != null) {
      return ageChanged(ageStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return ageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageChanged != null) {
      return ageChanged(this);
    }
    return orElse();
  }
}

abstract class AgeChanged implements RegisterAccountEvent {
  const factory AgeChanged(String ageStr) = _$AgeChanged;

  String get ageStr;
  $AgeChangedCopyWith<AgeChanged> get copyWith;
}

abstract class $NextClickedCopyWith<$Res> {
  factory $NextClickedCopyWith(
          NextClicked value, $Res Function(NextClicked) then) =
      _$NextClickedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$NextClickedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
    implements $NextClickedCopyWith<$Res> {
  _$NextClickedCopyWithImpl(
      NextClicked _value, $Res Function(NextClicked) _then)
      : super(_value, (v) => _then(v as NextClicked));

  @override
  NextClicked get _value => super._value as NextClicked;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(NextClicked(
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$NextClicked with DiagnosticableTreeMixin implements NextClicked {
  const _$NextClicked(this.context) : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.nextClicked(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterAccountEvent.nextClicked'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NextClicked &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $NextClickedCopyWith<NextClicked> get copyWith =>
      _$NextClickedCopyWithImpl<NextClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return nextClicked(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextClicked != null) {
      return nextClicked(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return nextClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextClicked != null) {
      return nextClicked(this);
    }
    return orElse();
  }
}

abstract class NextClicked implements RegisterAccountEvent {
  const factory NextClicked(BuildContext context) = _$NextClicked;

  BuildContext get context;
  $NextClickedCopyWith<NextClicked> get copyWith;
}

abstract class $ObscureTextClickedCopyWith<$Res> {
  factory $ObscureTextClickedCopyWith(
          ObscureTextClicked value, $Res Function(ObscureTextClicked) then) =
      _$ObscureTextClickedCopyWithImpl<$Res>;
}

class _$ObscureTextClickedCopyWithImpl<$Res>
    extends _$RegisterAccountEventCopyWithImpl<$Res>
    implements $ObscureTextClickedCopyWith<$Res> {
  _$ObscureTextClickedCopyWithImpl(
      ObscureTextClicked _value, $Res Function(ObscureTextClicked) _then)
      : super(_value, (v) => _then(v as ObscureTextClicked));

  @override
  ObscureTextClicked get _value => super._value as ObscureTextClicked;
}

class _$ObscureTextClicked
    with DiagnosticableTreeMixin
    implements ObscureTextClicked {
  const _$ObscureTextClicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterAccountEvent.obscureTextClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterAccountEvent.obscureTextClicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ObscureTextClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String nameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String confirmPasswordStr),
    @required Result emailChanged(String emailStr),
    @required Result ageChanged(String ageStr),
    @required Result nextClicked(BuildContext context),
    @required Result obscureTextClicked(),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return obscureTextClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String nameStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String confirmPasswordStr),
    Result emailChanged(String emailStr),
    Result ageChanged(String ageStr),
    Result nextClicked(BuildContext context),
    Result obscureTextClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (obscureTextClicked != null) {
      return obscureTextClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result ageChanged(AgeChanged value),
    @required Result nextClicked(NextClicked value),
    @required Result obscureTextClicked(ObscureTextClicked value),
  }) {
    assert(nameChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(emailChanged != null);
    assert(ageChanged != null);
    assert(nextClicked != null);
    assert(obscureTextClicked != null);
    return obscureTextClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result ageChanged(AgeChanged value),
    Result nextClicked(NextClicked value),
    Result obscureTextClicked(ObscureTextClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (obscureTextClicked != null) {
      return obscureTextClicked(this);
    }
    return orElse();
  }
}

abstract class ObscureTextClicked implements RegisterAccountEvent {
  const factory ObscureTextClicked() = _$ObscureTextClicked;
}
