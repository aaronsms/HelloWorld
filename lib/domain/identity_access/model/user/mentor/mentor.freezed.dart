// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mentor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MentorTearOff {
  const _$MentorTearOff();

  _Mentor call(
      {@required MentorId id,
      @required UserId userId,
      @required TeachingBackground languageBackground,
      @required Location location,
      @required Gender gender}) {
    return _Mentor(
      id: id,
      userId: userId,
      languageBackground: languageBackground,
      location: location,
      gender: gender,
    );
  }
}

// ignore: unused_element
const $Mentor = _$MentorTearOff();

mixin _$Mentor {
  MentorId get id;
  UserId get userId;
  TeachingBackground get languageBackground;
  Location get location;
  Gender get gender;

  $MentorCopyWith<Mentor> get copyWith;
}

abstract class $MentorCopyWith<$Res> {
  factory $MentorCopyWith(Mentor value, $Res Function(Mentor) then) =
      _$MentorCopyWithImpl<$Res>;
  $Res call(
      {MentorId id,
      UserId userId,
      TeachingBackground languageBackground,
      Location location,
      Gender gender});
}

class _$MentorCopyWithImpl<$Res> implements $MentorCopyWith<$Res> {
  _$MentorCopyWithImpl(this._value, this._then);

  final Mentor _value;
  // ignore: unused_field
  final $Res Function(Mentor) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as MentorId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as TeachingBackground,
      location: location == freezed ? _value.location : location as Location,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

abstract class _$MentorCopyWith<$Res> implements $MentorCopyWith<$Res> {
  factory _$MentorCopyWith(_Mentor value, $Res Function(_Mentor) then) =
      __$MentorCopyWithImpl<$Res>;
  @override
  $Res call(
      {MentorId id,
      UserId userId,
      TeachingBackground languageBackground,
      Location location,
      Gender gender});
}

class __$MentorCopyWithImpl<$Res> extends _$MentorCopyWithImpl<$Res>
    implements _$MentorCopyWith<$Res> {
  __$MentorCopyWithImpl(_Mentor _value, $Res Function(_Mentor) _then)
      : super(_value, (v) => _then(v as _Mentor));

  @override
  _Mentor get _value => super._value as _Mentor;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
    Object gender = freezed,
  }) {
    return _then(_Mentor(
      id: id == freezed ? _value.id : id as MentorId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as TeachingBackground,
      location: location == freezed ? _value.location : location as Location,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

class _$_Mentor implements _Mentor {
  const _$_Mentor(
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
  final MentorId id;
  @override
  final UserId userId;
  @override
  final TeachingBackground languageBackground;
  @override
  final Location location;
  @override
  final Gender gender;

  @override
  String toString() {
    return 'Mentor(id: $id, userId: $userId, languageBackground: $languageBackground, location: $location, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mentor &&
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
  _$MentorCopyWith<_Mentor> get copyWith =>
      __$MentorCopyWithImpl<_Mentor>(this, _$identity);
}

abstract class _Mentor implements Mentor {
  const factory _Mentor(
      {@required MentorId id,
      @required UserId userId,
      @required TeachingBackground languageBackground,
      @required Location location,
      @required Gender gender}) = _$_Mentor;

  @override
  MentorId get id;
  @override
  UserId get userId;
  @override
  TeachingBackground get languageBackground;
  @override
  Location get location;
  @override
  Gender get gender;
  @override
  _$MentorCopyWith<_Mentor> get copyWith;
}
