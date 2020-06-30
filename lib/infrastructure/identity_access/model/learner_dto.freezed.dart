// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'learner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LearnerDto _$LearnerDtoFromJson(Map<String, dynamic> json) {
  return _LearnerDto.fromJson(json);
}

class _$LearnerDtoTearOff {
  const _$LearnerDtoTearOff();

  _LearnerDto call(
      {String id,
      String userId,
      String profilePicture,
      String biography,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages}) {
    return _LearnerDto(
      id: id,
      userId: userId,
      profilePicture: profilePicture,
      biography: biography,
      locations: locations,
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
    );
  }
}

// ignore: unused_element
const $LearnerDto = _$LearnerDtoTearOff();

mixin _$LearnerDto {
  String get id;
  String get userId;
  String get profilePicture;
  String get biography;
  List<String> get locations;
  Map<String, String> get learningLanguages;
  Map<String, String> get speakingLanguages;

  Map<String, dynamic> toJson();
  $LearnerDtoCopyWith<LearnerDto> get copyWith;
}

abstract class $LearnerDtoCopyWith<$Res> {
  factory $LearnerDtoCopyWith(
          LearnerDto value, $Res Function(LearnerDto) then) =
      _$LearnerDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String profilePicture,
      String biography,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages});
}

class _$LearnerDtoCopyWithImpl<$Res> implements $LearnerDtoCopyWith<$Res> {
  _$LearnerDtoCopyWithImpl(this._value, this._then);

  final LearnerDto _value;
  // ignore: unused_field
  final $Res Function(LearnerDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object profilePicture = freezed,
    Object biography = freezed,
    Object locations = freezed,
    Object learningLanguages = freezed,
    Object speakingLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as String,
      biography: biography == freezed ? _value.biography : biography as String,
      locations:
          locations == freezed ? _value.locations : locations as List<String>,
      learningLanguages: learningLanguages == freezed
          ? _value.learningLanguages
          : learningLanguages as Map<String, String>,
      speakingLanguages: speakingLanguages == freezed
          ? _value.speakingLanguages
          : speakingLanguages as Map<String, String>,
    ));
  }
}

abstract class _$LearnerDtoCopyWith<$Res> implements $LearnerDtoCopyWith<$Res> {
  factory _$LearnerDtoCopyWith(
          _LearnerDto value, $Res Function(_LearnerDto) then) =
      __$LearnerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String profilePicture,
      String biography,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages});
}

class __$LearnerDtoCopyWithImpl<$Res> extends _$LearnerDtoCopyWithImpl<$Res>
    implements _$LearnerDtoCopyWith<$Res> {
  __$LearnerDtoCopyWithImpl(
      _LearnerDto _value, $Res Function(_LearnerDto) _then)
      : super(_value, (v) => _then(v as _LearnerDto));

  @override
  _LearnerDto get _value => super._value as _LearnerDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object profilePicture = freezed,
    Object biography = freezed,
    Object locations = freezed,
    Object learningLanguages = freezed,
    Object speakingLanguages = freezed,
  }) {
    return _then(_LearnerDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as String,
      biography: biography == freezed ? _value.biography : biography as String,
      locations:
          locations == freezed ? _value.locations : locations as List<String>,
      learningLanguages: learningLanguages == freezed
          ? _value.learningLanguages
          : learningLanguages as Map<String, String>,
      speakingLanguages: speakingLanguages == freezed
          ? _value.speakingLanguages
          : speakingLanguages as Map<String, String>,
    ));
  }
}

@JsonSerializable()
class _$_LearnerDto extends _LearnerDto {
  const _$_LearnerDto(
      {this.id,
      this.userId,
      this.profilePicture,
      this.biography,
      this.locations,
      this.learningLanguages,
      this.speakingLanguages})
      : super._();

  factory _$_LearnerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LearnerDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String profilePicture;
  @override
  final String biography;
  @override
  final List<String> locations;
  @override
  final Map<String, String> learningLanguages;
  @override
  final Map<String, String> speakingLanguages;

  @override
  String toString() {
    return 'LearnerDto(id: $id, userId: $userId, profilePicture: $profilePicture, biography: $biography, locations: $locations, learningLanguages: $learningLanguages, speakingLanguages: $speakingLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LearnerDto &&
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
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.learningLanguages, learningLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.learningLanguages, learningLanguages)) &&
            (identical(other.speakingLanguages, speakingLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.speakingLanguages, speakingLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(biography) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(learningLanguages) ^
      const DeepCollectionEquality().hash(speakingLanguages);

  @override
  _$LearnerDtoCopyWith<_LearnerDto> get copyWith =>
      __$LearnerDtoCopyWithImpl<_LearnerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LearnerDtoToJson(this);
  }
}

abstract class _LearnerDto extends LearnerDto {
  const _LearnerDto._() : super._();
  const factory _LearnerDto(
      {String id,
      String userId,
      String profilePicture,
      String biography,
      List<String> locations,
      Map<String, String> learningLanguages,
      Map<String, String> speakingLanguages}) = _$_LearnerDto;

  factory _LearnerDto.fromJson(Map<String, dynamic> json) =
      _$_LearnerDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get profilePicture;
  @override
  String get biography;
  @override
  List<String> get locations;
  @override
  Map<String, String> get learningLanguages;
  @override
  Map<String, String> get speakingLanguages;
  @override
  _$LearnerDtoCopyWith<_LearnerDto> get copyWith;
}
