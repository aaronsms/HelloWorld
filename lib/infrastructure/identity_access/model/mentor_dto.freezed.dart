// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mentor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MentorDto _$MentorDtoFromJson(Map<String, dynamic> json) {
  return _MentorDto.fromJson(json);
}

class _$MentorDtoTearOff {
  const _$MentorDtoTearOff();

  _MentorDto call(
      {String id,
      String userId,
      String biography,
      String profilePicture,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages,
      Map<String, String> teachingLanguages}) {
    return _MentorDto(
      id: id,
      userId: userId,
      biography: biography,
      profilePicture: profilePicture,
      locations: locations,
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      teachingLanguages: teachingLanguages,
    );
  }
}

// ignore: unused_element
const $MentorDto = _$MentorDtoTearOff();

mixin _$MentorDto {
  String get id;
  String get userId;
  String get biography;
  String get profilePicture;
  List<String> get locations;
  Map<String, String> get learningLanguages;
  Map<String, String> get speakingLanguages;
  Map<String, String> get teachingLanguages;

  Map<String, dynamic> toJson();
  $MentorDtoCopyWith<MentorDto> get copyWith;
}

abstract class $MentorDtoCopyWith<$Res> {
  factory $MentorDtoCopyWith(MentorDto value, $Res Function(MentorDto) then) =
      _$MentorDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String biography,
      String profilePicture,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages,
      Map<String, String> teachingLanguages});
}

class _$MentorDtoCopyWithImpl<$Res> implements $MentorDtoCopyWith<$Res> {
  _$MentorDtoCopyWithImpl(this._value, this._then);

  final MentorDto _value;
  // ignore: unused_field
  final $Res Function(MentorDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object biography = freezed,
    Object profilePicture = freezed,
    Object locations = freezed,
    Object learningLanguages = freezed,
    Object speakingLanguages = freezed,
    Object teachingLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      biography: biography == freezed ? _value.biography : biography as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as String,
      locations:
          locations == freezed ? _value.locations : locations as List<String>,
      learningLanguages: learningLanguages == freezed
          ? _value.learningLanguages
          : learningLanguages as Map<String, String>,
      speakingLanguages: speakingLanguages == freezed
          ? _value.speakingLanguages
          : speakingLanguages as Map<String, String>,
      teachingLanguages: teachingLanguages == freezed
          ? _value.teachingLanguages
          : teachingLanguages as Map<String, String>,
    ));
  }
}

abstract class _$MentorDtoCopyWith<$Res> implements $MentorDtoCopyWith<$Res> {
  factory _$MentorDtoCopyWith(
          _MentorDto value, $Res Function(_MentorDto) then) =
      __$MentorDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String biography,
      String profilePicture,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages,
      Map<String, String> teachingLanguages});
}

class __$MentorDtoCopyWithImpl<$Res> extends _$MentorDtoCopyWithImpl<$Res>
    implements _$MentorDtoCopyWith<$Res> {
  __$MentorDtoCopyWithImpl(_MentorDto _value, $Res Function(_MentorDto) _then)
      : super(_value, (v) => _then(v as _MentorDto));

  @override
  _MentorDto get _value => super._value as _MentorDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object biography = freezed,
    Object profilePicture = freezed,
    Object locations = freezed,
    Object learningLanguages = freezed,
    Object speakingLanguages = freezed,
    Object teachingLanguages = freezed,
  }) {
    return _then(_MentorDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      biography: biography == freezed ? _value.biography : biography as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as String,
      locations:
          locations == freezed ? _value.locations : locations as List<String>,
      learningLanguages: learningLanguages == freezed
          ? _value.learningLanguages
          : learningLanguages as Map<String, String>,
      speakingLanguages: speakingLanguages == freezed
          ? _value.speakingLanguages
          : speakingLanguages as Map<String, String>,
      teachingLanguages: teachingLanguages == freezed
          ? _value.teachingLanguages
          : teachingLanguages as Map<String, String>,
    ));
  }
}

@JsonSerializable()
class _$_MentorDto extends _MentorDto {
  const _$_MentorDto(
      {this.id,
      this.userId,
      this.biography,
      this.profilePicture,
      this.locations,
      this.learningLanguages,
      this.speakingLanguages,
      this.teachingLanguages})
      : super._();

  factory _$_MentorDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MentorDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String biography;
  @override
  final String profilePicture;
  @override
  final List<String> locations;
  @override
  final Map<String, String> learningLanguages;
  @override
  final Map<String, String> speakingLanguages;
  @override
  final Map<String, String> teachingLanguages;

  @override
  String toString() {
    return 'MentorDto(id: $id, userId: $userId, biography: $biography, profilePicture: $profilePicture, locations: $locations, learningLanguages: $learningLanguages, speakingLanguages: $speakingLanguages, teachingLanguages: $teachingLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MentorDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.biography, biography) ||
                const DeepCollectionEquality()
                    .equals(other.biography, biography)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.learningLanguages, learningLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.learningLanguages, learningLanguages)) &&
            (identical(other.speakingLanguages, speakingLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.speakingLanguages, speakingLanguages)) &&
            (identical(other.teachingLanguages, teachingLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.teachingLanguages, teachingLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(biography) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(learningLanguages) ^
      const DeepCollectionEquality().hash(speakingLanguages) ^
      const DeepCollectionEquality().hash(teachingLanguages);

  @override
  _$MentorDtoCopyWith<_MentorDto> get copyWith =>
      __$MentorDtoCopyWithImpl<_MentorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MentorDtoToJson(this);
  }
}

abstract class _MentorDto extends MentorDto {
  const _MentorDto._() : super._();
  const factory _MentorDto(
      {String id,
      String userId,
      String biography,
      String profilePicture,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages,
      Map<String, String> teachingLanguages}) = _$_MentorDto;

  factory _MentorDto.fromJson(Map<String, dynamic> json) =
      _$_MentorDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get biography;
  @override
  String get profilePicture;
  @override
  List<String> get locations;
  @override
  Map<String, String> get learningLanguages;
  @override
  Map<String, String> get speakingLanguages;
  @override
  Map<String, String> get teachingLanguages;
  @override
  _$MentorDtoCopyWith<_MentorDto> get copyWith;
}
