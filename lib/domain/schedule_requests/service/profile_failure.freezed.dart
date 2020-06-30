// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileFailureTearOff {
  const _$ProfileFailureTearOff();

  _UnableToUpdate unableToUpdate() {
    return const _UnableToUpdate();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

// ignore: unused_element
const $ProfileFailure = _$ProfileFailureTearOff();

mixin _$ProfileFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToUpdate(),
    @required Result unexpected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToUpdate(),
    Result unexpected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToUpdate(_UnableToUpdate value),
    @required Result unexpected(_Unexpected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToUpdate(_UnableToUpdate value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  });
}

abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res>;
}

class _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  final ProfileFailure _value;
  // ignore: unused_field
  final $Res Function(ProfileFailure) _then;
}

abstract class _$UnableToUpdateCopyWith<$Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate value, $Res Function(_UnableToUpdate) then) =
      __$UnableToUpdateCopyWithImpl<$Res>;
}

class __$UnableToUpdateCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements _$UnableToUpdateCopyWith<$Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate _value, $Res Function(_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate));

  @override
  _UnableToUpdate get _value => super._value as _UnableToUpdate;
}

class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'ProfileFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToUpdate(),
    @required Result unexpected(),
  }) {
    assert(unableToUpdate != null);
    assert(unexpected != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToUpdate(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToUpdate(_UnableToUpdate value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(unableToUpdate != null);
    assert(unexpected != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToUpdate(_UnableToUpdate value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements ProfileFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}

abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

class __$UnexpectedCopyWithImpl<$Res> extends _$ProfileFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ProfileFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToUpdate(),
    @required Result unexpected(),
  }) {
    assert(unableToUpdate != null);
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToUpdate(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToUpdate(_UnableToUpdate value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(unableToUpdate != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToUpdate(_UnableToUpdate value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ProfileFailure {
  const factory _Unexpected() = _$_Unexpected;
}
