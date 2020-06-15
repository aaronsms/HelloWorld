// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'learner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LearnerTearOff {
  const _$LearnerTearOff();

  _Learner _(
      {@required LearnerId id,
      @required UserId userId,
      @required LearningBackground languageBackground,
      @required Location location,
      @required Gender gender}) {
    return _Learner(
      id: id,
      userId: userId,
      languageBackground: languageBackground,
      location: location,
      gender: gender,
    );
  }
}

// ignore: unused_element
const $Learner = _$LearnerTearOff();

mixin _$Learner {
  LearnerId get id;
  UserId get userId;
  LearningBackground get languageBackground;
  Location get location;
  Gender get gender;

  $LearnerCopyWith<Learner> get copyWith;
}

abstract class $LearnerCopyWith<$Res> {
  factory $LearnerCopyWith(Learner value, $Res Function(Learner) then) =
      _$LearnerCopyWithImpl<$Res>;
  $Res call(
      {LearnerId id,
      UserId userId,
      LearningBackground languageBackground,
      Location location,
      Gender gender});
}

class _$LearnerCopyWithImpl<$Res> implements $LearnerCopyWith<$Res> {
  _$LearnerCopyWithImpl(this._value, this._then);

  final Learner _value;
  // ignore: unused_field
  final $Res Function(Learner) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as LearnerId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as LearningBackground,
      location: location == freezed ? _value.location : location as Location,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

abstract class _$LearnerCopyWith<$Res> implements $LearnerCopyWith<$Res> {
  factory _$LearnerCopyWith(_Learner value, $Res Function(_Learner) then) =
      __$LearnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {LearnerId id,
      UserId userId,
      LearningBackground languageBackground,
      Location location,
      Gender gender});
}

class __$LearnerCopyWithImpl<$Res> extends _$LearnerCopyWithImpl<$Res>
    implements _$LearnerCopyWith<$Res> {
  __$LearnerCopyWithImpl(_Learner _value, $Res Function(_Learner) _then)
      : super(_value, (v) => _then(v as _Learner));

  @override
  _Learner get _value => super._value as _Learner;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
    Object gender = freezed,
  }) {
    return _then(_Learner(
      id: id == freezed ? _value.id : id as LearnerId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as LearningBackground,
      location: location == freezed ? _value.location : location as Location,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

class _$_Learner implements _Learner {
  const _$_Learner(
      {@required this.id,
      @required this.userId,
      @required this.languageBackground,
      @required this.location,
      @required this.gender})
      : assert(id != null),
        assert(userId != null),
        assert(languageBackground != null),
        assert(location != null),
        assert(gender != null);

  @override
  final LearnerId id;
  @override
  final UserId userId;
  @override
  final LearningBackground languageBackground;
  @override
  final Location location;
  @override
  final Gender gender;

  @override
  String toString() {
    return 'Learner._(id: $id, userId: $userId, languageBackground: $languageBackground, location: $location, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Learner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.languageBackground, languageBackground) ||
                const DeepCollectionEquality()
                    .equals(other.languageBackground, languageBackground)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(languageBackground) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(gender);

  @override
  _$LearnerCopyWith<_Learner> get copyWith =>
      __$LearnerCopyWithImpl<_Learner>(this, _$identity);
}

abstract class _Learner implements Learner {
  const factory _Learner(
      {@required LearnerId id,
      @required UserId userId,
      @required LearningBackground languageBackground,
      @required Location location,
      @required Gender gender}) = _$_Learner;

  @override
  LearnerId get id;
  @override
  UserId get userId;
  @override
  LearningBackground get languageBackground;
  @override
  Location get location;
  @override
  Gender get gender;
  @override
  _$LearnerCopyWith<_Learner> get copyWith;
}
