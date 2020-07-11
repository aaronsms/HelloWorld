// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterAccountStateTearOff {
  const _$RegisterAccountStateTearOff();

  _RegisterAccountState call(
      {@required Name name,
      @required Password password,
      @required Password confirmPassword,
      @required EmailAddress emailAddress,
      @required Age age,
      @required bool showErrorMessage,
      @required bool obscureText}) {
    return _RegisterAccountState(
      name: name,
      password: password,
      confirmPassword: confirmPassword,
      emailAddress: emailAddress,
      age: age,
      showErrorMessage: showErrorMessage,
      obscureText: obscureText,
    );
  }
}

// ignore: unused_element
const $RegisterAccountState = _$RegisterAccountStateTearOff();

mixin _$RegisterAccountState {
  Name get name;
  Password get password;
  Password get confirmPassword;
  EmailAddress get emailAddress;
  Age get age;
  bool get showErrorMessage;
  bool get obscureText;

  $RegisterAccountStateCopyWith<RegisterAccountState> get copyWith;
}

abstract class $RegisterAccountStateCopyWith<$Res> {
  factory $RegisterAccountStateCopyWith(RegisterAccountState value,
          $Res Function(RegisterAccountState) then) =
      _$RegisterAccountStateCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      Password password,
      Password confirmPassword,
      EmailAddress emailAddress,
      Age age,
      bool showErrorMessage,
      bool obscureText});
}

class _$RegisterAccountStateCopyWithImpl<$Res>
    implements $RegisterAccountStateCopyWith<$Res> {
  _$RegisterAccountStateCopyWithImpl(this._value, this._then);

  final RegisterAccountState _value;
  // ignore: unused_field
  final $Res Function(RegisterAccountState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object emailAddress = freezed,
    Object age = freezed,
    Object showErrorMessage = freezed,
    Object obscureText = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      age: age == freezed ? _value.age : age as Age,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      obscureText:
          obscureText == freezed ? _value.obscureText : obscureText as bool,
    ));
  }
}

abstract class _$RegisterAccountStateCopyWith<$Res>
    implements $RegisterAccountStateCopyWith<$Res> {
  factory _$RegisterAccountStateCopyWith(_RegisterAccountState value,
          $Res Function(_RegisterAccountState) then) =
      __$RegisterAccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      Password password,
      Password confirmPassword,
      EmailAddress emailAddress,
      Age age,
      bool showErrorMessage,
      bool obscureText});
}

class __$RegisterAccountStateCopyWithImpl<$Res>
    extends _$RegisterAccountStateCopyWithImpl<$Res>
    implements _$RegisterAccountStateCopyWith<$Res> {
  __$RegisterAccountStateCopyWithImpl(
      _RegisterAccountState _value, $Res Function(_RegisterAccountState) _then)
      : super(_value, (v) => _then(v as _RegisterAccountState));

  @override
  _RegisterAccountState get _value => super._value as _RegisterAccountState;

  @override
  $Res call({
    Object name = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object emailAddress = freezed,
    Object age = freezed,
    Object showErrorMessage = freezed,
    Object obscureText = freezed,
  }) {
    return _then(_RegisterAccountState(
      name: name == freezed ? _value.name : name as Name,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      age: age == freezed ? _value.age : age as Age,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      obscureText:
          obscureText == freezed ? _value.obscureText : obscureText as bool,
    ));
  }
}

class _$_RegisterAccountState implements _RegisterAccountState {
  const _$_RegisterAccountState(
      {@required this.name,
      @required this.password,
      @required this.confirmPassword,
      @required this.emailAddress,
      @required this.age,
      @required this.showErrorMessage,
      @required this.obscureText})
      : assert(name != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(emailAddress != null),
        assert(age != null),
        assert(showErrorMessage != null),
        assert(obscureText != null);

  @override
  final Name name;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final EmailAddress emailAddress;
  @override
  final Age age;
  @override
  final bool showErrorMessage;
  @override
  final bool obscureText;

  @override
  String toString() {
    return 'RegisterAccountState(name: $name, password: $password, confirmPassword: $confirmPassword, emailAddress: $emailAddress, age: $age, showErrorMessage: $showErrorMessage, obscureText: $obscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterAccountState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.obscureText, obscureText) ||
                const DeepCollectionEquality()
                    .equals(other.obscureText, obscureText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(obscureText);

  @override
  _$RegisterAccountStateCopyWith<_RegisterAccountState> get copyWith =>
      __$RegisterAccountStateCopyWithImpl<_RegisterAccountState>(
          this, _$identity);
}

abstract class _RegisterAccountState implements RegisterAccountState {
  const factory _RegisterAccountState(
      {@required Name name,
      @required Password password,
      @required Password confirmPassword,
      @required EmailAddress emailAddress,
      @required Age age,
      @required bool showErrorMessage,
      @required bool obscureText}) = _$_RegisterAccountState;

  @override
  Name get name;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  EmailAddress get emailAddress;
  @override
  Age get age;
  @override
  bool get showErrorMessage;
  @override
  bool get obscureText;
  @override
  _$RegisterAccountStateCopyWith<_RegisterAccountState> get copyWith;
}
