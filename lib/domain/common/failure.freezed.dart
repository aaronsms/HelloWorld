// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({@required String failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _InvalidAge<T> invalidAge<T>({@required int failedValue}) {
    return _InvalidAge<T>(
      failedValue: failedValue,
    );
  }

  _EmptyField<T> emptyField<T>() {
    return _EmptyField<T>();
  }

  _BadFilePath<T> badFilePath<T>({@required String failedValue}) {
    return _BadFilePath<T>(
      failedValue: failedValue,
    );
  }

  _InvalidProficiency<T> invalidProficiency<T>({@required String failedValue}) {
    return _InvalidProficiency<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class _$InvalidEmailCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({@required String failedValue}) =
      _$_InvalidEmail<T>;

  String get failedValue;
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith;
}

abstract class _$ShortPasswordCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({@required String failedValue}) =
      _$_ShortPassword<T>;

  String get failedValue;
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith;
}

abstract class _$InvalidAgeCopyWith<T, $Res> {
  factory _$InvalidAgeCopyWith(
          _InvalidAge<T> value, $Res Function(_InvalidAge<T>) then) =
      __$InvalidAgeCopyWithImpl<T, $Res>;
  $Res call({int failedValue});
}

class __$InvalidAgeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidAgeCopyWith<T, $Res> {
  __$InvalidAgeCopyWithImpl(
      _InvalidAge<T> _value, $Res Function(_InvalidAge<T>) _then)
      : super(_value, (v) => _then(v as _InvalidAge<T>));

  @override
  _InvalidAge<T> get _value => super._value as _InvalidAge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidAge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as int,
    ));
  }
}

class _$_InvalidAge<T> implements _InvalidAge<T> {
  const _$_InvalidAge({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final int failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAge(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidAge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidAgeCopyWith<T, _InvalidAge<T>> get copyWith =>
      __$InvalidAgeCopyWithImpl<T, _InvalidAge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidAge(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidAge != null) {
      return invalidAge(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidAge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidAge != null) {
      return invalidAge(this);
    }
    return orElse();
  }
}

abstract class _InvalidAge<T> implements ValueFailure<T> {
  const factory _InvalidAge({@required int failedValue}) = _$_InvalidAge<T>;

  int get failedValue;
  _$InvalidAgeCopyWith<T, _InvalidAge<T>> get copyWith;
}

abstract class _$EmptyFieldCopyWith<T, $Res> {
  factory _$EmptyFieldCopyWith(
          _EmptyField<T> value, $Res Function(_EmptyField<T>) then) =
      __$EmptyFieldCopyWithImpl<T, $Res>;
}

class __$EmptyFieldCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyFieldCopyWith<T, $Res> {
  __$EmptyFieldCopyWithImpl(
      _EmptyField<T> _value, $Res Function(_EmptyField<T>) _then)
      : super(_value, (v) => _then(v as _EmptyField<T>));

  @override
  _EmptyField<T> get _value => super._value as _EmptyField<T>;
}

class _$_EmptyField<T> implements _EmptyField<T> {
  const _$_EmptyField();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptyField<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return emptyField();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyField != null) {
      return emptyField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return emptyField(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyField != null) {
      return emptyField(this);
    }
    return orElse();
  }
}

abstract class _EmptyField<T> implements ValueFailure<T> {
  const factory _EmptyField() = _$_EmptyField<T>;
}

abstract class _$BadFilePathCopyWith<T, $Res> {
  factory _$BadFilePathCopyWith(
          _BadFilePath<T> value, $Res Function(_BadFilePath<T>) then) =
      __$BadFilePathCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$BadFilePathCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$BadFilePathCopyWith<T, $Res> {
  __$BadFilePathCopyWithImpl(
      _BadFilePath<T> _value, $Res Function(_BadFilePath<T>) _then)
      : super(_value, (v) => _then(v as _BadFilePath<T>));

  @override
  _BadFilePath<T> get _value => super._value as _BadFilePath<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_BadFilePath<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_BadFilePath<T> implements _BadFilePath<T> {
  const _$_BadFilePath({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.badFilePath(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadFilePath<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$BadFilePathCopyWith<T, _BadFilePath<T>> get copyWith =>
      __$BadFilePathCopyWithImpl<T, _BadFilePath<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return badFilePath(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badFilePath != null) {
      return badFilePath(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return badFilePath(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badFilePath != null) {
      return badFilePath(this);
    }
    return orElse();
  }
}

abstract class _BadFilePath<T> implements ValueFailure<T> {
  const factory _BadFilePath({@required String failedValue}) =
      _$_BadFilePath<T>;

  String get failedValue;
  _$BadFilePathCopyWith<T, _BadFilePath<T>> get copyWith;
}

abstract class _$InvalidProficiencyCopyWith<T, $Res> {
  factory _$InvalidProficiencyCopyWith(_InvalidProficiency<T> value,
          $Res Function(_InvalidProficiency<T>) then) =
      __$InvalidProficiencyCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$InvalidProficiencyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidProficiencyCopyWith<T, $Res> {
  __$InvalidProficiencyCopyWithImpl(_InvalidProficiency<T> _value,
      $Res Function(_InvalidProficiency<T>) _then)
      : super(_value, (v) => _then(v as _InvalidProficiency<T>));

  @override
  _InvalidProficiency<T> get _value => super._value as _InvalidProficiency<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidProficiency<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_InvalidProficiency<T> implements _InvalidProficiency<T> {
  const _$_InvalidProficiency({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidProficiency(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidProficiency<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidProficiencyCopyWith<T, _InvalidProficiency<T>> get copyWith =>
      __$InvalidProficiencyCopyWithImpl<T, _InvalidProficiency<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
    @required Result emptyField(),
    @required Result badFilePath(String failedValue),
    @required Result invalidProficiency(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidProficiency(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    Result emptyField(),
    Result badFilePath(String failedValue),
    Result invalidProficiency(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidProficiency != null) {
      return invalidProficiency(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
    @required Result emptyField(_EmptyField<T> value),
    @required Result badFilePath(_BadFilePath<T> value),
    @required Result invalidProficiency(_InvalidProficiency<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    assert(emptyField != null);
    assert(badFilePath != null);
    assert(invalidProficiency != null);
    return invalidProficiency(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    Result emptyField(_EmptyField<T> value),
    Result badFilePath(_BadFilePath<T> value),
    Result invalidProficiency(_InvalidProficiency<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidProficiency != null) {
      return invalidProficiency(this);
    }
    return orElse();
  }
}

abstract class _InvalidProficiency<T> implements ValueFailure<T> {
  const factory _InvalidProficiency({@required String failedValue}) =
      _$_InvalidProficiency<T>;

  String get failedValue;
  _$InvalidProficiencyCopyWith<T, _InvalidProficiency<T>> get copyWith;
}
