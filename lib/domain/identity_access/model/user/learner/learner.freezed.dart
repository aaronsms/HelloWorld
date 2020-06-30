// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'learner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LearnerTearOff {
  const _$LearnerTearOff();

  _Learner call(
      {@required LearnerId id,
      @required UserId userId,
      @required ProfilePicture profilePicture,
      @required Biography biography,
      @required LearningBackground languageBackground,
      @required List<Location> location}) {
    return _Learner(
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
const $Learner = _$LearnerTearOff();

mixin _$Learner {
  LearnerId get id;
  UserId get userId;
  ProfilePicture get profilePicture;
  Biography get biography;
  LearningBackground get languageBackground;
  List<Location> get location;

  $LearnerCopyWith<Learner> get copyWith;
}

abstract class $LearnerCopyWith<$Res> {
  factory $LearnerCopyWith(Learner value, $Res Function(Learner) then) =
      _$LearnerCopyWithImpl<$Res>;
  $Res call(
      {LearnerId id,
      UserId userId,
      ProfilePicture profilePicture,
      Biography biography,
      LearningBackground languageBackground,
      List<Location> location});
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
    Object profilePicture = freezed,
    Object biography = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as LearnerId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as ProfilePicture,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as LearningBackground,
      location:
          location == freezed ? _value.location : location as List<Location>,
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
      ProfilePicture profilePicture,
      Biography biography,
      LearningBackground languageBackground,
      List<Location> location});
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
    Object profilePicture = freezed,
    Object biography = freezed,
    Object languageBackground = freezed,
    Object location = freezed,
  }) {
    return _then(_Learner(
      id: id == freezed ? _value.id : id as LearnerId,
      userId: userId == freezed ? _value.userId : userId as UserId,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as ProfilePicture,
      biography:
          biography == freezed ? _value.biography : biography as Biography,
      languageBackground: languageBackground == freezed
          ? _value.languageBackground
          : languageBackground as LearningBackground,
      location:
          location == freezed ? _value.location : location as List<Location>,
    ));
  }
}

class _$_Learner implements _Learner {
  const _$_Learner(
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
  final LearnerId id;
  @override
  final UserId userId;
  @override
  final ProfilePicture profilePicture;
  @override
  final Biography biography;
  @override
  final LearningBackground languageBackground;
  @override
  final List<Location> location;

  @override
  String toString() {
    return 'Learner(id: $id, userId: $userId, profilePicture: $profilePicture, biography: $biography, languageBackground: $languageBackground, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Learner &&
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
  _$LearnerCopyWith<_Learner> get copyWith =>
      __$LearnerCopyWithImpl<_Learner>(this, _$identity);
}

abstract class _Learner implements Learner {
  const factory _Learner(
      {@required LearnerId id,
      @required UserId userId,
      @required ProfilePicture profilePicture,
      @required Biography biography,
      @required LearningBackground languageBackground,
      @required List<Location> location}) = _$_Learner;

  @override
  LearnerId get id;
  @override
  UserId get userId;
  @override
  ProfilePicture get profilePicture;
  @override
  Biography get biography;
  @override
  LearningBackground get languageBackground;
  @override
  List<Location> get location;
  @override
  _$LearnerCopyWith<_Learner> get copyWith;
}
