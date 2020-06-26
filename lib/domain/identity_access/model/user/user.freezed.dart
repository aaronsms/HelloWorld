// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User _(
      {@required UserId id,
      @required Name name,
      @required EmailAddress emailAddress,
      @required Password password}) {
    return _User(
      id: id,
      name: name,
      emailAddress: emailAddress,
      password: password,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UserId get id;
  Name get name;
  EmailAddress get emailAddress;
  Password get password;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UserId id, Name name, EmailAddress emailAddress, Password password});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UserId,
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserId id, Name name, EmailAddress emailAddress, Password password});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UserId,
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.emailAddress,
      @required this.password})
      : assert(id != null),
        assert(name != null),
        assert(emailAddress != null),
        assert(password != null);

  @override
  final UserId id;
  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'User._(id: $id, name: $name, emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UserId id,
      @required Name name,
      @required EmailAddress emailAddress,
      @required Password password}) = _$_User;

  @override
  UserId get id;
  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  _$UserCopyWith<_User> get copyWith;
}
