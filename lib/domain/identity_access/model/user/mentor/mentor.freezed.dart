// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mentor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MentorTearOff {
  const _$MentorTearOff();

  _Mentor _(
      {@required MentorId id,
      @required UserId userId,
      @required ProfilePicture profilePicture,
      @required Biography biography,
      @required TeachingBackground languageBackground,
      @required List<Location> location}) {
    return _Mentor(
      id: id,
      userId: userId,
      profilePicture: profilePicture,
      biography: biography,
      languageBackground: languageBackground,
      location: location,
    );
  }
}

// ignore: unused_element
const $Mentor = _$MentorTearOff();

mixin _$Mentor {
  MentorId get id;
  UserId get userId;
  ProfilePicture get profilePicture;
  Biography get biography;
  TeachingBackground get languageBackground;
  List<Location> get location;

  $MentorCopyWith<Mentor> get copyWith;
}

abstract class $MentorCopyWith<$Res> {
  factory $MentorCopyWith(Mentor value, $Res Function(Mentor) then) =
      _$MentorCopyWithImpl<$Res>;
  $Res call(
      {MentorId id,
      UserId userId,
      ProfilePicture profilePicture,
      Biography biography,
      TeachingBackground languageBackground,
      List<Location> location});
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
    Object profilePicture = freezed,
    Object biography = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as MentorId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as ProfilePicture,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as TeachingBackground,
      location:
          location == freezed ? _value.location : location as List<Location>,
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
      ProfilePicture profilePicture,
      Biography biography,
      TeachingBackground languageBackground,
      List<Location> location});
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
    Object profilePicture = freezed,
    Object biography = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
  }) {
    return _then(_Mentor(
      id: id == freezed ? _value.id : id as MentorId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as ProfilePicture,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as TeachingBackground,
      location:
          location == freezed ? _value.location : location as List<Location>,
    ));
  }
}

class _$_Mentor implements _Mentor {
  const _$_Mentor(
      {@required this.id,
      @required this.userId,
      @required this.profilePicture,
      @required this.biography,
      @required this.languageBackground,
      @required this.location})
      : assert(id != null),
        assert(userId != null),
        assert(profilePicture != null),
        assert(biography != null),
        assert(languageBackground != null),
        assert(location != null);

  @override
  final MentorId id;
  @override
  final UserId userId;
  @override
  final ProfilePicture profilePicture;
  @override
  final Biography biography;
  @override
  final TeachingBackground languageBackground;
  @override
  final List<Location> location;

  @override
  String toString() {
    return 'Mentor._(id: $id, userId: $userId, profilePicture: $profilePicture, biography: $biography, languageBackground: $languageBackground, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mentor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.biography, biography) ||
                const DeepCollectionEquality()
                    .equals(other.biography, biography)) &&
            (identical(other.languageBackground, languageBackground) ||
                const DeepCollectionEquality()
                    .equals(other.languageBackground, languageBackground)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(biography) ^
      const DeepCollectionEquality().hash(languageBackground) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$MentorCopyWith<_Mentor> get copyWith =>
      __$MentorCopyWithImpl<_Mentor>(this, _$identity);
}

abstract class _Mentor implements Mentor {
  const factory _Mentor(
      {@required MentorId id,
      @required UserId userId,
      @required ProfilePicture profilePicture,
      @required Biography biography,
      @required TeachingBackground languageBackground,
      @required List<Location> location}) = _$_Mentor;

  @override
  MentorId get id;
  @override
  UserId get userId;
  @override
  ProfilePicture get profilePicture;
  @override
  Biography get biography;
  @override
  TeachingBackground get languageBackground;
  @override
  List<Location> get location;
  @override
  _$MentorCopyWith<_Mentor> get copyWith;
}
