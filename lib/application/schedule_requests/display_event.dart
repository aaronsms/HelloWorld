part of 'display_bloc.dart';

@freezed
abstract class DisplayEvent with _$DisplayEvent {
  const factory DisplayEvent.switchProfileDisplay() = _SwitchProfileDisplay;
  const factory DisplayEvent.watchAllStarted() = _WatchAllStarted;
  const factory DisplayEvent.profileReceived(
      Either<ProfileFailure, Tuple2<List<Learner>, List<Mentor>>>
          failureOrProfiles) = _ProfileReceived;
}
