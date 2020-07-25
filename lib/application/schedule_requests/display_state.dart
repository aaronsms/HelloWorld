part of 'display_bloc.dart';

@freezed
abstract class DisplayState with _$DisplayState {
  factory DisplayState.initial() => const DisplayState(isLearnerOrMentor: true);
  // ignore: sort_unnamed_constructors_first
  const factory DisplayState({@required bool isLearnerOrMentor}) = _Initial;
  const factory DisplayState.loading({@required bool isLearnerOrMentor}) =
      _Loading;
  const factory DisplayState.loadSuccess({
    List<Learner> listOfLearner,
    List<Mentor> listOfMentor,
    @required bool isLearnerOrMentor,
    Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>, Set<TeachingLanguage>> filterOptions,
  }) = _LoadSuccess;
  const factory DisplayState.loadFailure({
    @required ProfileFailure profileFailure,
    @required bool isLearnerOrMentor,
  }) = _LoadFailure;
}
