// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterProfileEventTearOff {
  const _$RegisterProfileEventTearOff();

  ImageSet imageSet({File file}) {
    return ImageSet(
      file: file,
    );
  }

  BioChanged bioChanged({String bio}) {
    return BioChanged(
      bio: bio,
    );
  }

  LearningLanguageAdded learningLanguageAdded(
      {String language, String proficiency}) {
    return LearningLanguageAdded(
      language: language,
      proficiency: proficiency,
    );
  }

  SpeakingLanguageAdded speakingLanguageAdded(
      {String language, String proficiency}) {
    return SpeakingLanguageAdded(
      language: language,
      proficiency: proficiency,
    );
  }

  TeachingLanguageAdded teachingLanguageAdded(
      {String language, String proficiency}) {
    return TeachingLanguageAdded(
      language: language,
      proficiency: proficiency,
    );
  }

  LearningLanguageDeleted learningLanguageDeleted({String language}) {
    return LearningLanguageDeleted(
      language: language,
    );
  }

  SpeakingLanguageDeleted speakingLanguageDeleted({String language}) {
    return SpeakingLanguageDeleted(
      language: language,
    );
  }

  TeachingLanguageDeleted teachingLanguageDeleted({String language}) {
    return TeachingLanguageDeleted(
      language: language,
    );
  }

  DoneClicked doneClicked() {
    return const DoneClicked();
  }
}

// ignore: unused_element
const $RegisterProfileEvent = _$RegisterProfileEventTearOff();

mixin _$RegisterProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  });
}

abstract class $RegisterProfileEventCopyWith<$Res> {
  factory $RegisterProfileEventCopyWith(RegisterProfileEvent value,
          $Res Function(RegisterProfileEvent) then) =
      _$RegisterProfileEventCopyWithImpl<$Res>;
}

class _$RegisterProfileEventCopyWithImpl<$Res>
    implements $RegisterProfileEventCopyWith<$Res> {
  _$RegisterProfileEventCopyWithImpl(this._value, this._then);

  final RegisterProfileEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterProfileEvent) _then;
}

abstract class $ImageSetCopyWith<$Res> {
  factory $ImageSetCopyWith(ImageSet value, $Res Function(ImageSet) then) =
      _$ImageSetCopyWithImpl<$Res>;
  $Res call({File file});
}

class _$ImageSetCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $ImageSetCopyWith<$Res> {
  _$ImageSetCopyWithImpl(ImageSet _value, $Res Function(ImageSet) _then)
      : super(_value, (v) => _then(v as ImageSet));

  @override
  ImageSet get _value => super._value as ImageSet;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(ImageSet(
      file: file == freezed ? _value.file : file as File,
    ));
  }
}

class _$ImageSet implements ImageSet {
  const _$ImageSet({this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'RegisterProfileEvent.imageSet(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageSet &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  $ImageSetCopyWith<ImageSet> get copyWith =>
      _$ImageSetCopyWithImpl<ImageSet>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return imageSet(file);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSet != null) {
      return imageSet(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return imageSet(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSet != null) {
      return imageSet(this);
    }
    return orElse();
  }
}

abstract class ImageSet implements RegisterProfileEvent {
  const factory ImageSet({File file}) = _$ImageSet;

  File get file;
  $ImageSetCopyWith<ImageSet> get copyWith;
}

abstract class $BioChangedCopyWith<$Res> {
  factory $BioChangedCopyWith(
          BioChanged value, $Res Function(BioChanged) then) =
      _$BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

class _$BioChangedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $BioChangedCopyWith<$Res> {
  _$BioChangedCopyWithImpl(BioChanged _value, $Res Function(BioChanged) _then)
      : super(_value, (v) => _then(v as BioChanged));

  @override
  BioChanged get _value => super._value as BioChanged;

  @override
  $Res call({
    Object bio = freezed,
  }) {
    return _then(BioChanged(
      bio: bio == freezed ? _value.bio : bio as String,
    ));
  }
}

class _$BioChanged implements BioChanged {
  const _$BioChanged({this.bio});

  @override
  final String bio;

  @override
  String toString() {
    return 'RegisterProfileEvent.bioChanged(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BioChanged &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bio);

  @override
  $BioChangedCopyWith<BioChanged> get copyWith =>
      _$BioChangedCopyWithImpl<BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class BioChanged implements RegisterProfileEvent {
  const factory BioChanged({String bio}) = _$BioChanged;

  String get bio;
  $BioChangedCopyWith<BioChanged> get copyWith;
}

abstract class $LearningLanguageAddedCopyWith<$Res> {
  factory $LearningLanguageAddedCopyWith(LearningLanguageAdded value,
          $Res Function(LearningLanguageAdded) then) =
      _$LearningLanguageAddedCopyWithImpl<$Res>;
  $Res call({String language, String proficiency});
}

class _$LearningLanguageAddedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $LearningLanguageAddedCopyWith<$Res> {
  _$LearningLanguageAddedCopyWithImpl(
      LearningLanguageAdded _value, $Res Function(LearningLanguageAdded) _then)
      : super(_value, (v) => _then(v as LearningLanguageAdded));

  @override
  LearningLanguageAdded get _value => super._value as LearningLanguageAdded;

  @override
  $Res call({
    Object language = freezed,
    Object proficiency = freezed,
  }) {
    return _then(LearningLanguageAdded(
      language: language == freezed ? _value.language : language as String,
      proficiency:
          proficiency == freezed ? _value.proficiency : proficiency as String,
    ));
  }
}

class _$LearningLanguageAdded implements LearningLanguageAdded {
  const _$LearningLanguageAdded({this.language, this.proficiency});

  @override
  final String language;
  @override
  final String proficiency;

  @override
  String toString() {
    return 'RegisterProfileEvent.learningLanguageAdded(language: $language, proficiency: $proficiency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LearningLanguageAdded &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality()
                    .equals(other.proficiency, proficiency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(proficiency);

  @override
  $LearningLanguageAddedCopyWith<LearningLanguageAdded> get copyWith =>
      _$LearningLanguageAddedCopyWithImpl<LearningLanguageAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return learningLanguageAdded(language, proficiency);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (learningLanguageAdded != null) {
      return learningLanguageAdded(language, proficiency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return learningLanguageAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (learningLanguageAdded != null) {
      return learningLanguageAdded(this);
    }
    return orElse();
  }
}

abstract class LearningLanguageAdded implements RegisterProfileEvent {
  const factory LearningLanguageAdded({String language, String proficiency}) =
      _$LearningLanguageAdded;

  String get language;
  String get proficiency;
  $LearningLanguageAddedCopyWith<LearningLanguageAdded> get copyWith;
}

abstract class $SpeakingLanguageAddedCopyWith<$Res> {
  factory $SpeakingLanguageAddedCopyWith(SpeakingLanguageAdded value,
          $Res Function(SpeakingLanguageAdded) then) =
      _$SpeakingLanguageAddedCopyWithImpl<$Res>;
  $Res call({String language, String proficiency});
}

class _$SpeakingLanguageAddedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $SpeakingLanguageAddedCopyWith<$Res> {
  _$SpeakingLanguageAddedCopyWithImpl(
      SpeakingLanguageAdded _value, $Res Function(SpeakingLanguageAdded) _then)
      : super(_value, (v) => _then(v as SpeakingLanguageAdded));

  @override
  SpeakingLanguageAdded get _value => super._value as SpeakingLanguageAdded;

  @override
  $Res call({
    Object language = freezed,
    Object proficiency = freezed,
  }) {
    return _then(SpeakingLanguageAdded(
      language: language == freezed ? _value.language : language as String,
      proficiency:
          proficiency == freezed ? _value.proficiency : proficiency as String,
    ));
  }
}

class _$SpeakingLanguageAdded implements SpeakingLanguageAdded {
  const _$SpeakingLanguageAdded({this.language, this.proficiency});

  @override
  final String language;
  @override
  final String proficiency;

  @override
  String toString() {
    return 'RegisterProfileEvent.speakingLanguageAdded(language: $language, proficiency: $proficiency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SpeakingLanguageAdded &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality()
                    .equals(other.proficiency, proficiency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(proficiency);

  @override
  $SpeakingLanguageAddedCopyWith<SpeakingLanguageAdded> get copyWith =>
      _$SpeakingLanguageAddedCopyWithImpl<SpeakingLanguageAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return speakingLanguageAdded(language, proficiency);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (speakingLanguageAdded != null) {
      return speakingLanguageAdded(language, proficiency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return speakingLanguageAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (speakingLanguageAdded != null) {
      return speakingLanguageAdded(this);
    }
    return orElse();
  }
}

abstract class SpeakingLanguageAdded implements RegisterProfileEvent {
  const factory SpeakingLanguageAdded({String language, String proficiency}) =
      _$SpeakingLanguageAdded;

  String get language;
  String get proficiency;
  $SpeakingLanguageAddedCopyWith<SpeakingLanguageAdded> get copyWith;
}

abstract class $TeachingLanguageAddedCopyWith<$Res> {
  factory $TeachingLanguageAddedCopyWith(TeachingLanguageAdded value,
          $Res Function(TeachingLanguageAdded) then) =
      _$TeachingLanguageAddedCopyWithImpl<$Res>;
  $Res call({String language, String proficiency});
}

class _$TeachingLanguageAddedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $TeachingLanguageAddedCopyWith<$Res> {
  _$TeachingLanguageAddedCopyWithImpl(
      TeachingLanguageAdded _value, $Res Function(TeachingLanguageAdded) _then)
      : super(_value, (v) => _then(v as TeachingLanguageAdded));

  @override
  TeachingLanguageAdded get _value => super._value as TeachingLanguageAdded;

  @override
  $Res call({
    Object language = freezed,
    Object proficiency = freezed,
  }) {
    return _then(TeachingLanguageAdded(
      language: language == freezed ? _value.language : language as String,
      proficiency:
          proficiency == freezed ? _value.proficiency : proficiency as String,
    ));
  }
}

class _$TeachingLanguageAdded implements TeachingLanguageAdded {
  const _$TeachingLanguageAdded({this.language, this.proficiency});

  @override
  final String language;
  @override
  final String proficiency;

  @override
  String toString() {
    return 'RegisterProfileEvent.teachingLanguageAdded(language: $language, proficiency: $proficiency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeachingLanguageAdded &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality()
                    .equals(other.proficiency, proficiency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(proficiency);

  @override
  $TeachingLanguageAddedCopyWith<TeachingLanguageAdded> get copyWith =>
      _$TeachingLanguageAddedCopyWithImpl<TeachingLanguageAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return teachingLanguageAdded(language, proficiency);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teachingLanguageAdded != null) {
      return teachingLanguageAdded(language, proficiency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return teachingLanguageAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teachingLanguageAdded != null) {
      return teachingLanguageAdded(this);
    }
    return orElse();
  }
}

abstract class TeachingLanguageAdded implements RegisterProfileEvent {
  const factory TeachingLanguageAdded({String language, String proficiency}) =
      _$TeachingLanguageAdded;

  String get language;
  String get proficiency;
  $TeachingLanguageAddedCopyWith<TeachingLanguageAdded> get copyWith;
}

abstract class $LearningLanguageDeletedCopyWith<$Res> {
  factory $LearningLanguageDeletedCopyWith(LearningLanguageDeleted value,
          $Res Function(LearningLanguageDeleted) then) =
      _$LearningLanguageDeletedCopyWithImpl<$Res>;
  $Res call({String language});
}

class _$LearningLanguageDeletedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $LearningLanguageDeletedCopyWith<$Res> {
  _$LearningLanguageDeletedCopyWithImpl(LearningLanguageDeleted _value,
      $Res Function(LearningLanguageDeleted) _then)
      : super(_value, (v) => _then(v as LearningLanguageDeleted));

  @override
  LearningLanguageDeleted get _value => super._value as LearningLanguageDeleted;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(LearningLanguageDeleted(
      language: language == freezed ? _value.language : language as String,
    ));
  }
}

class _$LearningLanguageDeleted implements LearningLanguageDeleted {
  const _$LearningLanguageDeleted({this.language});

  @override
  final String language;

  @override
  String toString() {
    return 'RegisterProfileEvent.learningLanguageDeleted(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LearningLanguageDeleted &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $LearningLanguageDeletedCopyWith<LearningLanguageDeleted> get copyWith =>
      _$LearningLanguageDeletedCopyWithImpl<LearningLanguageDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return learningLanguageDeleted(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (learningLanguageDeleted != null) {
      return learningLanguageDeleted(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return learningLanguageDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (learningLanguageDeleted != null) {
      return learningLanguageDeleted(this);
    }
    return orElse();
  }
}

abstract class LearningLanguageDeleted implements RegisterProfileEvent {
  const factory LearningLanguageDeleted({String language}) =
      _$LearningLanguageDeleted;

  String get language;
  $LearningLanguageDeletedCopyWith<LearningLanguageDeleted> get copyWith;
}

abstract class $SpeakingLanguageDeletedCopyWith<$Res> {
  factory $SpeakingLanguageDeletedCopyWith(SpeakingLanguageDeleted value,
          $Res Function(SpeakingLanguageDeleted) then) =
      _$SpeakingLanguageDeletedCopyWithImpl<$Res>;
  $Res call({String language});
}

class _$SpeakingLanguageDeletedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $SpeakingLanguageDeletedCopyWith<$Res> {
  _$SpeakingLanguageDeletedCopyWithImpl(SpeakingLanguageDeleted _value,
      $Res Function(SpeakingLanguageDeleted) _then)
      : super(_value, (v) => _then(v as SpeakingLanguageDeleted));

  @override
  SpeakingLanguageDeleted get _value => super._value as SpeakingLanguageDeleted;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(SpeakingLanguageDeleted(
      language: language == freezed ? _value.language : language as String,
    ));
  }
}

class _$SpeakingLanguageDeleted implements SpeakingLanguageDeleted {
  const _$SpeakingLanguageDeleted({this.language});

  @override
  final String language;

  @override
  String toString() {
    return 'RegisterProfileEvent.speakingLanguageDeleted(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SpeakingLanguageDeleted &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $SpeakingLanguageDeletedCopyWith<SpeakingLanguageDeleted> get copyWith =>
      _$SpeakingLanguageDeletedCopyWithImpl<SpeakingLanguageDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return speakingLanguageDeleted(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (speakingLanguageDeleted != null) {
      return speakingLanguageDeleted(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return speakingLanguageDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (speakingLanguageDeleted != null) {
      return speakingLanguageDeleted(this);
    }
    return orElse();
  }
}

abstract class SpeakingLanguageDeleted implements RegisterProfileEvent {
  const factory SpeakingLanguageDeleted({String language}) =
      _$SpeakingLanguageDeleted;

  String get language;
  $SpeakingLanguageDeletedCopyWith<SpeakingLanguageDeleted> get copyWith;
}

abstract class $TeachingLanguageDeletedCopyWith<$Res> {
  factory $TeachingLanguageDeletedCopyWith(TeachingLanguageDeleted value,
          $Res Function(TeachingLanguageDeleted) then) =
      _$TeachingLanguageDeletedCopyWithImpl<$Res>;
  $Res call({String language});
}

class _$TeachingLanguageDeletedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $TeachingLanguageDeletedCopyWith<$Res> {
  _$TeachingLanguageDeletedCopyWithImpl(TeachingLanguageDeleted _value,
      $Res Function(TeachingLanguageDeleted) _then)
      : super(_value, (v) => _then(v as TeachingLanguageDeleted));

  @override
  TeachingLanguageDeleted get _value => super._value as TeachingLanguageDeleted;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(TeachingLanguageDeleted(
      language: language == freezed ? _value.language : language as String,
    ));
  }
}

class _$TeachingLanguageDeleted implements TeachingLanguageDeleted {
  const _$TeachingLanguageDeleted({this.language});

  @override
  final String language;

  @override
  String toString() {
    return 'RegisterProfileEvent.teachingLanguageDeleted(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeachingLanguageDeleted &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $TeachingLanguageDeletedCopyWith<TeachingLanguageDeleted> get copyWith =>
      _$TeachingLanguageDeletedCopyWithImpl<TeachingLanguageDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return teachingLanguageDeleted(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teachingLanguageDeleted != null) {
      return teachingLanguageDeleted(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return teachingLanguageDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teachingLanguageDeleted != null) {
      return teachingLanguageDeleted(this);
    }
    return orElse();
  }
}

abstract class TeachingLanguageDeleted implements RegisterProfileEvent {
  const factory TeachingLanguageDeleted({String language}) =
      _$TeachingLanguageDeleted;

  String get language;
  $TeachingLanguageDeletedCopyWith<TeachingLanguageDeleted> get copyWith;
}

abstract class $DoneClickedCopyWith<$Res> {
  factory $DoneClickedCopyWith(
          DoneClicked value, $Res Function(DoneClicked) then) =
      _$DoneClickedCopyWithImpl<$Res>;
}

class _$DoneClickedCopyWithImpl<$Res>
    extends _$RegisterProfileEventCopyWithImpl<$Res>
    implements $DoneClickedCopyWith<$Res> {
  _$DoneClickedCopyWithImpl(
      DoneClicked _value, $Res Function(DoneClicked) _then)
      : super(_value, (v) => _then(v as DoneClicked));

  @override
  DoneClicked get _value => super._value as DoneClicked;
}

class _$DoneClicked implements DoneClicked {
  const _$DoneClicked();

  @override
  String toString() {
    return 'RegisterProfileEvent.doneClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DoneClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageSet(File file),
    @required Result bioChanged(String bio),
    @required Result learningLanguageAdded(String language, String proficiency),
    @required Result speakingLanguageAdded(String language, String proficiency),
    @required Result teachingLanguageAdded(String language, String proficiency),
    @required Result learningLanguageDeleted(String language),
    @required Result speakingLanguageDeleted(String language),
    @required Result teachingLanguageDeleted(String language),
    @required Result doneClicked(),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return doneClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageSet(File file),
    Result bioChanged(String bio),
    Result learningLanguageAdded(String language, String proficiency),
    Result speakingLanguageAdded(String language, String proficiency),
    Result teachingLanguageAdded(String language, String proficiency),
    Result learningLanguageDeleted(String language),
    Result speakingLanguageDeleted(String language),
    Result teachingLanguageDeleted(String language),
    Result doneClicked(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneClicked != null) {
      return doneClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageSet(ImageSet value),
    @required Result bioChanged(BioChanged value),
    @required Result learningLanguageAdded(LearningLanguageAdded value),
    @required Result speakingLanguageAdded(SpeakingLanguageAdded value),
    @required Result teachingLanguageAdded(TeachingLanguageAdded value),
    @required Result learningLanguageDeleted(LearningLanguageDeleted value),
    @required Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    @required Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    @required Result doneClicked(DoneClicked value),
  }) {
    assert(imageSet != null);
    assert(bioChanged != null);
    assert(learningLanguageAdded != null);
    assert(speakingLanguageAdded != null);
    assert(teachingLanguageAdded != null);
    assert(learningLanguageDeleted != null);
    assert(speakingLanguageDeleted != null);
    assert(teachingLanguageDeleted != null);
    assert(doneClicked != null);
    return doneClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageSet(ImageSet value),
    Result bioChanged(BioChanged value),
    Result learningLanguageAdded(LearningLanguageAdded value),
    Result speakingLanguageAdded(SpeakingLanguageAdded value),
    Result teachingLanguageAdded(TeachingLanguageAdded value),
    Result learningLanguageDeleted(LearningLanguageDeleted value),
    Result speakingLanguageDeleted(SpeakingLanguageDeleted value),
    Result teachingLanguageDeleted(TeachingLanguageDeleted value),
    Result doneClicked(DoneClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneClicked != null) {
      return doneClicked(this);
    }
    return orElse();
  }
}

abstract class DoneClicked implements RegisterProfileEvent {
  const factory DoneClicked() = _$DoneClicked;
}
