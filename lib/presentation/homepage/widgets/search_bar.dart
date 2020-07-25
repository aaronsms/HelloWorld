import 'dart:async';

import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/application/schedule_requests/display_bloc.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/search_profile_filters.dart';
import 'package:helloworld/presentation/core/custom_dialog.dart'
// ignore: library_prefixes
    as customDialog;
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  final _Debouncer debounce = _Debouncer(milliseconds: 500);

  Future<
      dartz.Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
          Set<TeachingLanguage>>> createFilterAlertDialog(
      BuildContext context,
      Set<LearningLanguage> setLearn,
      Set<SpeakingLanguage> setSpeak,
      Set<TeachingLanguage> setTeach,
      {bool isLearnerOrMentor}) async {
    final dartz.Tuple3<Set<LearningLanguage>, Set<SpeakingLanguage>,
        Set<TeachingLanguage>> filterOptions = await showDialog(
      context: context,
      builder: (cont) {
        return MultiProvider(
          providers: [
            ListenableProvider(
                create: (_) => ValueNotifier<Set<LearningLanguage>>(setLearn)),
            ListenableProvider(
                create: (_) => ValueNotifier<Set<SpeakingLanguage>>(setSpeak)),
            ListenableProvider(
                create: (_) => ValueNotifier<Set<TeachingLanguage>>(setTeach)),
          ],
          child: SingleChildScrollView(
            child: customDialog.AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              backgroundColor: Palette.secondaryColor,
              title: const Text(""),
              content: SearchProfileFilters(
                isLearnerOrMentor: isLearnerOrMentor,
              ),
              contentPadding: const EdgeInsets.all(0),
              actions: <Widget>[_ButtonBar()],
            ),
          ),
        );
      },
    );

    return filterOptions;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          onTap: () async {
            final bloc = context.bloc<DisplayBloc>();
            await bloc.state.maybeMap(
              (value) => null,
              loadSuccess: (state) async {
                final option = state.filterOptions;
                final filterOptions = await createFilterAlertDialog(
                  context,
                  option.value1,
                  option.value2,
                  option.value3,
                  isLearnerOrMentor: state.isLearnerOrMentor,
                );
                bloc.add(DisplayEvent.languageFiltered(filterOptions));
              },
              orElse: () => null,
            );
          },
          onChanged: (value) {
            debounce.run(() {
              context
                  .bloc<DisplayBloc>()
                  .add(DisplayEvent.searchTextChanged(value));
            });
          },
          style: TextStyle(
              color: Palette.secondaryColor,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w800),
          cursorColor: Palette.secondaryColor,
          decoration: InputDecoration(
            hintText: "Input user's name or filter by user profile...",
            hintStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'Martel Sans',
                fontSize: 11,
                color: Colors.grey,
                fontWeight: FontWeight.w700),
            contentPadding: const EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                borderSide:
                    BorderSide(color: Palette.secondaryColor, width: 2)),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.white, width: 0),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Palette.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            final setSpeak =
                context.read<ValueNotifier<Set<LearningLanguage>>>().value;
            final setLearn =
                context.read<ValueNotifier<Set<SpeakingLanguage>>>().value;
            final setTeach =
                context.read<ValueNotifier<Set<TeachingLanguage>>>().value;

            Navigator.of(context)
                .pop(dartz.Tuple3(setSpeak, setLearn, setTeach));
          },
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Text(
            "APPLY",
            style: TextStyle(
                color: Palette.secondaryColor,
                fontFamily: 'Martel Sans',
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pop(const dartz.Tuple3(<LearningLanguage>{},
                <SpeakingLanguage>{}, <TeachingLanguage>{}));
          },
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Text(
            "CANCEL",
            style: TextStyle(
                color: Palette.secondaryColor,
                fontFamily: 'Martel Sans',
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}

class _Debouncer {
  final int milliseconds;
  Timer _timer;

  _Debouncer({this.milliseconds});

  void run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
