import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/schedule_requests/service/i_profile_repository.dart';
import 'package:helloworld/domain/schedule_requests/service/profile_failure.dart';

part 'display_event.dart';

part 'display_state.dart';

part 'display_bloc.freezed.dart';

class DisplayBloc extends Bloc<DisplayEvent, DisplayState> {
  final IProfileRepository _profileRepository;

  DisplayBloc(this._profileRepository);

  @override
  DisplayState get initialState => DisplayState.initial();

  @override
  Stream<DisplayState> mapEventToState(DisplayEvent event) async* {
    yield* event.map(
      switchProfileDisplay: (event) async* {
        yield DisplayState.loading(isLearnerOrMentor: !state.isLearnerOrMentor);
        add(const DisplayEvent.watchAllStarted());
      },
      watchAllStarted: (event) async* {
        yield DisplayState.loading(isLearnerOrMentor: state.isLearnerOrMentor);

        if (state.isLearnerOrMentor) {
          final eitherProfileFailureOrList1 =
              await _profileRepository.watchAllLearners();
          yield* eitherProfileFailureOrList1.fold(
            (l) async* {
              yield DisplayState.loadFailure(
                  profileFailure: l,
                  isLearnerOrMentor: state.isLearnerOrMentor);
            },
            (r) async* {
              yield DisplayState.loadSuccess(
                  listOfLearner: r,
                  isLearnerOrMentor: state.isLearnerOrMentor,
                  filterOptions: const Tuple3({}, {}, {}),
                  searchText: '');
            },
          );
        } else {
          final eitherProfileFailureOrList =
              await _profileRepository.watchAllMentors();
          yield* eitherProfileFailureOrList.fold(
            (l) async* {
              yield DisplayState.loadFailure(
                  profileFailure: l,
                  isLearnerOrMentor: state.isLearnerOrMentor);
            },
            (r) async* {
              yield DisplayState.loadSuccess(
                  listOfMentor: r,
                  isLearnerOrMentor: state.isLearnerOrMentor,
                  filterOptions: const Tuple3({}, {}, {}),
                  searchText: '');
            },
          );
        }
      },
      profileReceived: (event) async* {
        yield event.failureOrProfiles.fold(
            (l) => DisplayState.loadFailure(
                profileFailure: l, isLearnerOrMentor: state.isLearnerOrMentor),
            (r) => DisplayState.loadSuccess(
                listOfLearner: r.value1,
                listOfMentor: r.value2,
                isLearnerOrMentor: state.isLearnerOrMentor,
                filterOptions: const Tuple3({}, {}, {}),
                searchText: ''));
      },
      languageFiltered: (event) async* {
        final options = event.languageOptions;

        yield state.map(
          id,
          loading: id,
          loadFailure: id,
          loadSuccess: (state) => DisplayState.loadSuccess(
            searchText: state.searchText,
            filterOptions: options,
            isLearnerOrMentor: state.isLearnerOrMentor,
            listOfLearner: state.listOfLearner,
            listOfMentor: state.listOfMentor,
          ),
        );
      },
      searchTextChanged: (_SearchTextChanged value) async* {
        yield state.map(
          id,
          loading: id,
          loadFailure: id,
          loadSuccess: (state) => DisplayState.loadSuccess(
            searchText: value.searchText,
            filterOptions: state.filterOptions,
            isLearnerOrMentor: state.isLearnerOrMentor,
            listOfLearner: state.listOfLearner,
            listOfMentor: state.listOfMentor,
          ),
        );
      },
    );
  }
}
