// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'display_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DisplayEventTearOff {
  const _$DisplayEventTearOff();

  _SwitchProfileDisplay switchProfileDisplay() {
    return const _SwitchProfileDisplay();
  }

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _ProfileReceived profileReceived(
      Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
          failureOrProfiles) {
    return _ProfileReceived(
      failureOrProfiles,
    );
  }

  _LanguageFiltered languageFiltered(
      Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          languageOptions) {
    return _LanguageFiltered(
      languageOptions,
    );
  }
}

// ignore: unused_element
const $DisplayEvent = _$DisplayEventTearOff();

mixin _$DisplayEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchProfileDisplay(),
    @required Result watchAllStarted(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
                failureOrProfiles),
    @required
        Result languageFiltered(
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                languageOptions),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchProfileDisplay(),
    Result watchAllStarted(),
    Result profileReceived(
        Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
            failureOrProfiles),
    Result languageFiltered(
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            languageOptions),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchProfileDisplay(_SwitchProfileDisplay value),
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result profileReceived(_ProfileReceived value),
    @required Result languageFiltered(_LanguageFiltered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchProfileDisplay(_SwitchProfileDisplay value),
    Result watchAllStarted(_WatchAllStarted value),
    Result profileReceived(_ProfileReceived value),
    Result languageFiltered(_LanguageFiltered value),
    @required Result orElse(),
  });
}

abstract class $DisplayEventCopyWith<$Res> {
  factory $DisplayEventCopyWith(
          DisplayEvent value, $Res Function(DisplayEvent) then) =
      _$DisplayEventCopyWithImpl<$Res>;
}

class _$DisplayEventCopyWithImpl<$Res> implements $DisplayEventCopyWith<$Res> {
  _$DisplayEventCopyWithImpl(this._value, this._then);

  final DisplayEvent _value;
  // ignore: unused_field
  final $Res Function(DisplayEvent) _then;
}

abstract class _$SwitchProfileDisplayCopyWith<$Res> {
  factory _$SwitchProfileDisplayCopyWith(_SwitchProfileDisplay value,
          $Res Function(_SwitchProfileDisplay) then) =
      __$SwitchProfileDisplayCopyWithImpl<$Res>;
}

class __$SwitchProfileDisplayCopyWithImpl<$Res>
    extends _$DisplayEventCopyWithImpl<$Res>
    implements _$SwitchProfileDisplayCopyWith<$Res> {
  __$SwitchProfileDisplayCopyWithImpl(
      _SwitchProfileDisplay _value, $Res Function(_SwitchProfileDisplay) _then)
      : super(_value, (v) => _then(v as _SwitchProfileDisplay));

  @override
  _SwitchProfileDisplay get _value => super._value as _SwitchProfileDisplay;
}

class _$_SwitchProfileDisplay implements _SwitchProfileDisplay {
  const _$_SwitchProfileDisplay();

  @override
  String toString() {
    return 'DisplayEvent.switchProfileDisplay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SwitchProfileDisplay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchProfileDisplay(),
    @required Result watchAllStarted(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
                failureOrProfiles),
    @required
        Result languageFiltered(
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                languageOptions),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return switchProfileDisplay();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchProfileDisplay(),
    Result watchAllStarted(),
    Result profileReceived(
        Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
            failureOrProfiles),
    Result languageFiltered(
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            languageOptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchProfileDisplay != null) {
      return switchProfileDisplay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchProfileDisplay(_SwitchProfileDisplay value),
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result profileReceived(_ProfileReceived value),
    @required Result languageFiltered(_LanguageFiltered value),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return switchProfileDisplay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchProfileDisplay(_SwitchProfileDisplay value),
    Result watchAllStarted(_WatchAllStarted value),
    Result profileReceived(_ProfileReceived value),
    Result languageFiltered(_LanguageFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchProfileDisplay != null) {
      return switchProfileDisplay(this);
    }
    return orElse();
  }
}

abstract class _SwitchProfileDisplay implements DisplayEvent {
  const factory _SwitchProfileDisplay() = _$_SwitchProfileDisplay;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$DisplayEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'DisplayEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchProfileDisplay(),
    @required Result watchAllStarted(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
                failureOrProfiles),
    @required
        Result languageFiltered(
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                languageOptions),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchProfileDisplay(),
    Result watchAllStarted(),
    Result profileReceived(
        Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
            failureOrProfiles),
    Result languageFiltered(
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            languageOptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchProfileDisplay(_SwitchProfileDisplay value),
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result profileReceived(_ProfileReceived value),
    @required Result languageFiltered(_LanguageFiltered value),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchProfileDisplay(_SwitchProfileDisplay value),
    Result watchAllStarted(_WatchAllStarted value),
    Result profileReceived(_ProfileReceived value),
    Result languageFiltered(_LanguageFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements DisplayEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$ProfileReceivedCopyWith<$Res> {
  factory _$ProfileReceivedCopyWith(
          _ProfileReceived value, $Res Function(_ProfileReceived) then) =
      __$ProfileReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
          failureOrProfiles});
}

class __$ProfileReceivedCopyWithImpl<$Res>
    extends _$DisplayEventCopyWithImpl<$Res>
    implements _$ProfileReceivedCopyWith<$Res> {
  __$ProfileReceivedCopyWithImpl(
      _ProfileReceived _value, $Res Function(_ProfileReceived) _then)
      : super(_value, (v) => _then(v as _ProfileReceived));

  @override
  _ProfileReceived get _value => super._value as _ProfileReceived;

  @override
  $Res call({
    Object failureOrProfiles = freezed,
  }) {
    return _then(_ProfileReceived(
      failureOrProfiles == freezed
          ? _value.failureOrProfiles
          : failureOrProfiles
              as Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>,
    ));
  }
}

class _$_ProfileReceived implements _ProfileReceived {
  const _$_ProfileReceived(this.failureOrProfiles)
      : assert(failureOrProfiles != null);

  @override
  final Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
      failureOrProfiles;

  @override
  String toString() {
    return 'DisplayEvent.profileReceived(failureOrProfiles: $failureOrProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileReceived &&
            (identical(other.failureOrProfiles, failureOrProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProfiles, failureOrProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProfiles);

  @override
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith =>
      __$ProfileReceivedCopyWithImpl<_ProfileReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchProfileDisplay(),
    @required Result watchAllStarted(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
                failureOrProfiles),
    @required
        Result languageFiltered(
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                languageOptions),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return profileReceived(failureOrProfiles);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchProfileDisplay(),
    Result watchAllStarted(),
    Result profileReceived(
        Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
            failureOrProfiles),
    Result languageFiltered(
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            languageOptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(failureOrProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchProfileDisplay(_SwitchProfileDisplay value),
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result profileReceived(_ProfileReceived value),
    @required Result languageFiltered(_LanguageFiltered value),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return profileReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchProfileDisplay(_SwitchProfileDisplay value),
    Result watchAllStarted(_WatchAllStarted value),
    Result profileReceived(_ProfileReceived value),
    Result languageFiltered(_LanguageFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(this);
    }
    return orElse();
  }
}

abstract class _ProfileReceived implements DisplayEvent {
  const factory _ProfileReceived(
      Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
          failureOrProfiles) = _$_ProfileReceived;

  Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
      get failureOrProfiles;
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith;
}

abstract class _$LanguageFilteredCopyWith<$Res> {
  factory _$LanguageFilteredCopyWith(
          _LanguageFiltered value, $Res Function(_LanguageFiltered) then) =
      __$LanguageFilteredCopyWithImpl<$Res>;
  $Res call(
      {Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          languageOptions});
}

class __$LanguageFilteredCopyWithImpl<$Res>
    extends _$DisplayEventCopyWithImpl<$Res>
    implements _$LanguageFilteredCopyWith<$Res> {
  __$LanguageFilteredCopyWithImpl(
      _LanguageFiltered _value, $Res Function(_LanguageFiltered) _then)
      : super(_value, (v) => _then(v as _LanguageFiltered));

  @override
  _LanguageFiltered get _value => super._value as _LanguageFiltered;

  @override
  $Res call({
    Object languageOptions = freezed,
  }) {
    return _then(_LanguageFiltered(
      languageOptions == freezed
          ? _value.languageOptions
          : languageOptions as Tuple3<Set<LearningLanguage>,
              Set<SpeakingLanguage>, Set<TeachingLanguage>>,
    ));
  }
}

class _$_LanguageFiltered implements _LanguageFiltered {
  const _$_LanguageFiltered(this.languageOptions)
      : assert(languageOptions != null);

  @override
  final Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
      Set<TeachingLanguage>> languageOptions;

  @override
  String toString() {
    return 'DisplayEvent.languageFiltered(languageOptions: $languageOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageFiltered &&
            (identical(other.languageOptions, languageOptions) ||
                const DeepCollectionEquality()
                    .equals(other.languageOptions, languageOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageOptions);

  @override
  _$LanguageFilteredCopyWith<_LanguageFiltered> get copyWith =>
      __$LanguageFilteredCopyWithImpl<_LanguageFiltered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result switchProfileDisplay(),
    @required Result watchAllStarted(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
                failureOrProfiles),
    @required
        Result languageFiltered(
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                languageOptions),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return languageFiltered(languageOptions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result switchProfileDisplay(),
    Result watchAllStarted(),
    Result profileReceived(
        Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
            failureOrProfiles),
    Result languageFiltered(
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            languageOptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFiltered != null) {
      return languageFiltered(languageOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result switchProfileDisplay(_SwitchProfileDisplay value),
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result profileReceived(_ProfileReceived value),
    @required Result languageFiltered(_LanguageFiltered value),
  }) {
    assert(switchProfileDisplay != null);
    assert(watchAllStarted != null);
    assert(profileReceived != null);
    assert(languageFiltered != null);
    return languageFiltered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result switchProfileDisplay(_SwitchProfileDisplay value),
    Result watchAllStarted(_WatchAllStarted value),
    Result profileReceived(_ProfileReceived value),
    Result languageFiltered(_LanguageFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFiltered != null) {
      return languageFiltered(this);
    }
    return orElse();
  }
}

abstract class _LanguageFiltered implements DisplayEvent {
  const factory _LanguageFiltered(
      Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          languageOptions) = _$_LanguageFiltered;

  Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>, Set<TeachingLanguage>>
      get languageOptions;
  _$LanguageFilteredCopyWith<_LanguageFiltered> get copyWith;
}

class _$DisplayStateTearOff {
  const _$DisplayStateTearOff();

  _Initial call({@required bool isLearnerOrMentor}) {
    return _Initial(
      isLearnerOrMentor: isLearnerOrMentor,
    );
  }

  _Loading loading({@required bool isLearnerOrMentor}) {
    return _Loading(
      isLearnerOrMentor: isLearnerOrMentor,
    );
  }

  _LoadSuccess loadSuccess(
      {List<Learner> listOfLearner,
      List<Mentor> listOfMentor,
      @required bool isLearnerOrMentor,
      Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          filterOptions}) {
    return _LoadSuccess(
      listOfLearner: listOfLearner,
      listOfMentor: listOfMentor,
      isLearnerOrMentor: isLearnerOrMentor,
      filterOptions: filterOptions,
    );
  }

  _LoadFailure loadFailure(
      {@required ProfileFailure profileFailure,
      @required bool isLearnerOrMentor}) {
    return _LoadFailure(
      profileFailure: profileFailure,
      isLearnerOrMentor: isLearnerOrMentor,
    );
  }
}

// ignore: unused_element
const $DisplayState = _$DisplayStateTearOff();

mixin _$DisplayState {
  bool get isLearnerOrMentor;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    @required Result loading(bool isLearnerOrMentor),
    @required
        Result loadSuccess(
            List<Learner> listOfLearner,
            List<Mentor> listOfMentor,
            bool isLearnerOrMentor,
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                filterOptions),
    @required
        Result loadFailure(
            ProfileFailure profileFailure, bool isLearnerOrMentor),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    Result loading(bool isLearnerOrMentor),
    Result loadSuccess(
        List<Learner> listOfLearner,
        List<Mentor> listOfMentor,
        bool isLearnerOrMentor,
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            filterOptions),
    Result loadFailure(ProfileFailure profileFailure, bool isLearnerOrMentor),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Initial value), {
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Initial value), {
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });

  $DisplayStateCopyWith<DisplayState> get copyWith;
}

abstract class $DisplayStateCopyWith<$Res> {
  factory $DisplayStateCopyWith(
          DisplayState value, $Res Function(DisplayState) then) =
      _$DisplayStateCopyWithImpl<$Res>;
  $Res call({bool isLearnerOrMentor});
}

class _$DisplayStateCopyWithImpl<$Res> implements $DisplayStateCopyWith<$Res> {
  _$DisplayStateCopyWithImpl(this._value, this._then);

  final DisplayState _value;
  // ignore: unused_field
  final $Res Function(DisplayState) _then;

  @override
  $Res call({
    Object isLearnerOrMentor = freezed,
  }) {
    return _then(_value.copyWith(
      isLearnerOrMentor: isLearnerOrMentor == freezed
          ? _value.isLearnerOrMentor
          : isLearnerOrMentor as bool,
    ));
  }
}

abstract class _$InitialCopyWith<$Res> implements $DisplayStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isLearnerOrMentor});
}

class __$InitialCopyWithImpl<$Res> extends _$DisplayStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object isLearnerOrMentor = freezed,
  }) {
    return _then(_Initial(
      isLearnerOrMentor: isLearnerOrMentor == freezed
          ? _value.isLearnerOrMentor
          : isLearnerOrMentor as bool,
    ));
  }
}

class _$_Initial implements _Initial {
  const _$_Initial({@required this.isLearnerOrMentor})
      : assert(isLearnerOrMentor != null);

  @override
  final bool isLearnerOrMentor;

  @override
  String toString() {
    return 'DisplayState(isLearnerOrMentor: $isLearnerOrMentor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.isLearnerOrMentor, isLearnerOrMentor) ||
                const DeepCollectionEquality()
                    .equals(other.isLearnerOrMentor, isLearnerOrMentor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLearnerOrMentor);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    @required Result loading(bool isLearnerOrMentor),
    @required
        Result loadSuccess(
            List<Learner> listOfLearner,
            List<Mentor> listOfMentor,
            bool isLearnerOrMentor,
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                filterOptions),
    @required
        Result loadFailure(
            ProfileFailure profileFailure, bool isLearnerOrMentor),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return $default(isLearnerOrMentor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    Result loading(bool isLearnerOrMentor),
    Result loadSuccess(
        List<Learner> listOfLearner,
        List<Mentor> listOfMentor,
        bool isLearnerOrMentor,
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            filterOptions),
    Result loadFailure(ProfileFailure profileFailure, bool isLearnerOrMentor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(isLearnerOrMentor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Initial value), {
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Initial value), {
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DisplayState {
  const factory _Initial({@required bool isLearnerOrMentor}) = _$_Initial;

  @override
  bool get isLearnerOrMentor;
  @override
  _$InitialCopyWith<_Initial> get copyWith;
}

abstract class _$LoadingCopyWith<$Res> implements $DisplayStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool isLearnerOrMentor});
}

class __$LoadingCopyWithImpl<$Res> extends _$DisplayStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object isLearnerOrMentor = freezed,
  }) {
    return _then(_Loading(
      isLearnerOrMentor: isLearnerOrMentor == freezed
          ? _value.isLearnerOrMentor
          : isLearnerOrMentor as bool,
    ));
  }
}

class _$_Loading implements _Loading {
  const _$_Loading({@required this.isLearnerOrMentor})
      : assert(isLearnerOrMentor != null);

  @override
  final bool isLearnerOrMentor;

  @override
  String toString() {
    return 'DisplayState.loading(isLearnerOrMentor: $isLearnerOrMentor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.isLearnerOrMentor, isLearnerOrMentor) ||
                const DeepCollectionEquality()
                    .equals(other.isLearnerOrMentor, isLearnerOrMentor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLearnerOrMentor);

  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    @required Result loading(bool isLearnerOrMentor),
    @required
        Result loadSuccess(
            List<Learner> listOfLearner,
            List<Mentor> listOfMentor,
            bool isLearnerOrMentor,
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                filterOptions),
    @required
        Result loadFailure(
            ProfileFailure profileFailure, bool isLearnerOrMentor),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading(isLearnerOrMentor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    Result loading(bool isLearnerOrMentor),
    Result loadSuccess(
        List<Learner> listOfLearner,
        List<Mentor> listOfMentor,
        bool isLearnerOrMentor,
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            filterOptions),
    Result loadFailure(ProfileFailure profileFailure, bool isLearnerOrMentor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(isLearnerOrMentor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Initial value), {
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Initial value), {
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DisplayState {
  const factory _Loading({@required bool isLearnerOrMentor}) = _$_Loading;

  @override
  bool get isLearnerOrMentor;
  @override
  _$LoadingCopyWith<_Loading> get copyWith;
}

abstract class _$LoadSuccessCopyWith<$Res>
    implements $DisplayStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Learner> listOfLearner,
      List<Mentor> listOfMentor,
      bool isLearnerOrMentor,
      Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          filterOptions});
}

class __$LoadSuccessCopyWithImpl<$Res> extends _$DisplayStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object listOfLearner = freezed,
    Object listOfMentor = freezed,
    Object isLearnerOrMentor = freezed,
    Object filterOptions = freezed,
  }) {
    return _then(_LoadSuccess(
      listOfLearner: listOfLearner == freezed
          ? _value.listOfLearner
          : listOfLearner as List<Learner>,
      listOfMentor: listOfMentor == freezed
          ? _value.listOfMentor
          : listOfMentor as List<Mentor>,
      isLearnerOrMentor: isLearnerOrMentor == freezed
          ? _value.isLearnerOrMentor
          : isLearnerOrMentor as bool,
      filterOptions: filterOptions == freezed
          ? _value.filterOptions
          : filterOptions as Tuple3<Set<LearningLanguage>,
              Set<SpeakingLanguage>, Set<TeachingLanguage>>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(
      {this.listOfLearner,
      this.listOfMentor,
      @required this.isLearnerOrMentor,
      this.filterOptions})
      : assert(isLearnerOrMentor != null);

  @override
  final List<Learner> listOfLearner;
  @override
  final List<Mentor> listOfMentor;
  @override
  final bool isLearnerOrMentor;
  @override
  final Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
      Set<TeachingLanguage>> filterOptions;

  @override
  String toString() {
    return 'DisplayState.loadSuccess(listOfLearner: $listOfLearner, listOfMentor: $listOfMentor, isLearnerOrMentor: $isLearnerOrMentor, filterOptions: $filterOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.listOfLearner, listOfLearner) ||
                const DeepCollectionEquality()
                    .equals(other.listOfLearner, listOfLearner)) &&
            (identical(other.listOfMentor, listOfMentor) ||
                const DeepCollectionEquality()
                    .equals(other.listOfMentor, listOfMentor)) &&
            (identical(other.isLearnerOrMentor, isLearnerOrMentor) ||
                const DeepCollectionEquality()
                    .equals(other.isLearnerOrMentor, isLearnerOrMentor)) &&
            (identical(other.filterOptions, filterOptions) ||
                const DeepCollectionEquality()
                    .equals(other.filterOptions, filterOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listOfLearner) ^
      const DeepCollectionEquality().hash(listOfMentor) ^
      const DeepCollectionEquality().hash(isLearnerOrMentor) ^
      const DeepCollectionEquality().hash(filterOptions);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    @required Result loading(bool isLearnerOrMentor),
    @required
        Result loadSuccess(
            List<Learner> listOfLearner,
            List<Mentor> listOfMentor,
            bool isLearnerOrMentor,
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                filterOptions),
    @required
        Result loadFailure(
            ProfileFailure profileFailure, bool isLearnerOrMentor),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(
        listOfLearner, listOfMentor, isLearnerOrMentor, filterOptions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    Result loading(bool isLearnerOrMentor),
    Result loadSuccess(
        List<Learner> listOfLearner,
        List<Mentor> listOfMentor,
        bool isLearnerOrMentor,
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            filterOptions),
    Result loadFailure(ProfileFailure profileFailure, bool isLearnerOrMentor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(
          listOfLearner, listOfMentor, isLearnerOrMentor, filterOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Initial value), {
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Initial value), {
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements DisplayState {
  const factory _LoadSuccess(
      {List<Learner> listOfLearner,
      List<Mentor> listOfMentor,
      @required bool isLearnerOrMentor,
      Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
              Set<TeachingLanguage>>
          filterOptions}) = _$_LoadSuccess;

  List<Learner> get listOfLearner;
  List<Mentor> get listOfMentor;
  @override
  bool get isLearnerOrMentor;
  Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>, Set<TeachingLanguage>>
      get filterOptions;
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res>
    implements $DisplayStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({ProfileFailure profileFailure, bool isLearnerOrMentor});

  $ProfileFailureCopyWith<$Res> get profileFailure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$DisplayStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object profileFailure = freezed,
    Object isLearnerOrMentor = freezed,
  }) {
    return _then(_LoadFailure(
      profileFailure: profileFailure == freezed
          ? _value.profileFailure
          : profileFailure as ProfileFailure,
      isLearnerOrMentor: isLearnerOrMentor == freezed
          ? _value.isLearnerOrMentor
          : isLearnerOrMentor as bool,
    ));
  }

  @override
  $ProfileFailureCopyWith<$Res> get profileFailure {
    if (_value.profileFailure == null) {
      return null;
    }
    return $ProfileFailureCopyWith<$Res>(_value.profileFailure, (value) {
      return _then(_value.copyWith(profileFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(
      {@required this.profileFailure, @required this.isLearnerOrMentor})
      : assert(profileFailure != null),
        assert(isLearnerOrMentor != null);

  @override
  final ProfileFailure profileFailure;
  @override
  final bool isLearnerOrMentor;

  @override
  String toString() {
    return 'DisplayState.loadFailure(profileFailure: $profileFailure, isLearnerOrMentor: $isLearnerOrMentor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.profileFailure, profileFailure) ||
                const DeepCollectionEquality()
                    .equals(other.profileFailure, profileFailure)) &&
            (identical(other.isLearnerOrMentor, isLearnerOrMentor) ||
                const DeepCollectionEquality()
                    .equals(other.isLearnerOrMentor, isLearnerOrMentor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileFailure) ^
      const DeepCollectionEquality().hash(isLearnerOrMentor);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    @required Result loading(bool isLearnerOrMentor),
    @required
        Result loadSuccess(
            List<Learner> listOfLearner,
            List<Mentor> listOfMentor,
            bool isLearnerOrMentor,
            Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                    Set<TeachingLanguage>>
                filterOptions),
    @required
        Result loadFailure(
            ProfileFailure profileFailure, bool isLearnerOrMentor),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(profileFailure, isLearnerOrMentor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(bool isLearnerOrMentor), {
    Result loading(bool isLearnerOrMentor),
    Result loadSuccess(
        List<Learner> listOfLearner,
        List<Mentor> listOfMentor,
        bool isLearnerOrMentor,
        Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
                Set<TeachingLanguage>>
            filterOptions),
    Result loadFailure(ProfileFailure profileFailure, bool isLearnerOrMentor),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(profileFailure, isLearnerOrMentor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Initial value), {
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Initial value), {
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements DisplayState {
  const factory _LoadFailure(
      {@required ProfileFailure profileFailure,
      @required bool isLearnerOrMentor}) = _$_LoadFailure;

  ProfileFailure get profileFailure;
  @override
  bool get isLearnerOrMentor;
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
