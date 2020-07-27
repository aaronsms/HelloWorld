import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_background.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/portfolio.dart';
import 'package:helloworld/presentation/profile/widgets/charge.dart';
import 'package:helloworld/presentation/register/widgets/language_dialog.dart';
import 'package:helloworld/presentation/register/widgets/language_selection_dashboard.dart';
import 'package:helloworld/presentation/register/widgets/proficiency_dialog.dart';
import 'package:provider/provider.dart';

class ProfileForm extends StatelessWidget {
  final String title;
  final List<LanguageSet> languages;
  final List<LocationUi> locations;
  final List<Portfolio> qualifications;
  final List<Charge> charges;
  final bool isEditing;
  final bool isLearnerOrMentor;
  final bool isTeach;
  final bool isLearn;
  final bool isSpeak;

  const ProfileForm({
    Key key,
    @required this.title,
    this.languages,
    this.locations,
    this.qualifications,
    this.charges,
    this.isEditing = false,
    this.isTeach = false,
    this.isLearn = false,
    this.isSpeak = false,
    this.isLearnerOrMentor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'Martel Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Palette.secondaryColor),
              ),
            ),
            if (!isEditing)
              Container(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Column(
                  children: qualifications ?? languages ?? locations ?? charges,
                ),
              )
            else if (isLearn || isTeach || isSpeak)
              _LanguageSelection(
                isLearn: isLearn,
                isTeach: isTeach,
                isSpeak: isSpeak,
                isLearnerOrMentor: isLearnerOrMentor,
              )
            else
              _LocationSelection(),
            if (isEditing)
              Center(
                child: GestureDetector(
                  onTap: () async {
                    if (isLearn || isSpeak || isTeach) {
                      await addLanguage(
                        context: context,
                        isLearnerOrMentor: isLearnerOrMentor,
                        isLearn: isLearn,
                        isSpeak: isSpeak,
                        isTeach: isTeach,
                      );
                    } else {
                      final LocationResult result = await showLocationPicker(
                        context,
                        'AIzaSyAq8DekxFfhSpuq7AV7OVNS_Go1pzspxTA',
                        automaticallyAnimateToCurrentLocation: true,
//                      mapStylePath: 'assets/mapStyle.json',
                        myLocationButtonEnabled: true,
                        layersButtonEnabled: true,
//                      resultCardAlignment: Alignment.bottomCenter,
                      );
                      print("result = $result");

                      final valueNotifier =
                          context.read<ValueNotifier<Learner>>();
                      final initial = valueNotifier.value.location;

                      valueNotifier.value = valueNotifier.value
                          .copyWith(location: [
                        ...initial,
                        dartz.Tuple2(result.latLng, Location(result.address))
                      ]);
                    }
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Palette.primaryColor,
                    size: 30.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _LocationSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final valueNotifier = context.watch<ValueNotifier<Learner>>();
    final listOfLocations = valueNotifier.value.location;

    return Card(
      margin: const EdgeInsets.all(10.0),
      color: Palette.secondaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ...listOfLocations.map((e) {
            return ListTile(
              leading: Icon(
                Icons.location_city,
                color: Palette.primaryColor,
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete_sweep),
                color: Palette.primaryColor,
                onPressed: () {
                  /* Location deleted */
                  final valueNotifier = context.read<ValueNotifier<Learner>>();
                  final initial = valueNotifier.value.location;

                  valueNotifier.value = valueNotifier.value.copyWith(
                      location: [...initial]
                        ..removeWhere((latlng) => latlng.value1 == e.value1));
                },
              ),
              title: Text(
                e.value2.getOrElse(''),
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Martel Sans',
                    fontSize: 14),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _LanguageSelection extends StatelessWidget {
  final bool isTeach;
  final bool isLearn;
  final bool isSpeak;
  final bool isLearnerOrMentor;

  const _LanguageSelection({
    Key key,
    this.isTeach = false,
    this.isLearn = false,
    this.isSpeak = false,
    this.isLearnerOrMentor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var language;

    if (isLearnerOrMentor) {
      final valueNotifier = context.watch<ValueNotifier<Learner>>();
      language = isLearn
          ? valueNotifier.value.languageBackground.learningLanguages
          : valueNotifier.value.languageBackground.speakingLanguages;
    } else {
      final valueNotifier = context.watch<ValueNotifier<Mentor>>();
      language = isLearn
          ? valueNotifier.value.languageBackground.learningLanguages
          : isSpeak
              ? valueNotifier.value.languageBackground.speakingLanguages
              : valueNotifier.value.languageBackground.teachingLanguages;
    }

    final list = language.entries.map((e) => dartz.Tuple2(e.key, e.value));

    return Card(
      margin: const EdgeInsets.all(10.0),
      color: Palette.secondaryColor,
      child: Column(
        children: <Widget>[
          ...list.map((tuple) {
            return ListTile(
              leading: Icon(Icons.language, color: Palette.primaryColor),
              trailing: IconButton(
                icon: Icon(Icons.delete_sweep),
                color: Palette.primaryColor,
                onPressed: () {
                  /** Delete language */
                  if (isLearn && isLearnerOrMentor) {
                    final valueNotifier =
                        context.read<ValueNotifier<Learner>>();
                    final initial = valueNotifier.value.languageBackground;
                    final newMap = {
                      ...initial.learningLanguages
                        ..removeWhere((key, value) => key == tuple.value1)
                    };

                    final languageBackground = LearningBackground(
                      learningLanguages: newMap,
                      speakingLanguages: {...initial.speakingLanguages},
                    );

                    valueNotifier.value = valueNotifier.value
                        .copyWith(languageBackground: languageBackground);
                  }

                  if (isSpeak && isLearnerOrMentor) {
                    final valueNotifier =
                        context.read<ValueNotifier<Learner>>();
                    final initial = valueNotifier.value.languageBackground;
                    final newMap = {
                      ...initial.speakingLanguages
                        ..removeWhere((key, value) => key == tuple.value1)
                    };

                    final languageBackground = LearningBackground(
                      learningLanguages: {...initial.learningLanguages},
                      speakingLanguages: newMap,
                    );

                    valueNotifier.value = valueNotifier.value
                        .copyWith(languageBackground: languageBackground);
                  }

                  if (!isLearnerOrMentor) {
                    if (isTeach) {
                      final valueNotifier =
                          context.read<ValueNotifier<Mentor>>();
                      final initial = valueNotifier.value.languageBackground;
                      final newMap = {
                        ...initial.teachingLanguages
                          ..removeWhere((key, value) => key == tuple.value1)
                      };

                      final languageBackground = TeachingBackground(
                        learningLanguages: {...initial.learningLanguages},
                        speakingLanguages: {...initial.speakingLanguages},
                        teachingLanguages: newMap,
                      );

                      valueNotifier.value = valueNotifier.value
                          .copyWith(languageBackground: languageBackground);
                    } else if (isSpeak) {
                      final valueNotifier =
                          context.read<ValueNotifier<Mentor>>();
                      final initial = valueNotifier.value.languageBackground;
                      final newMap = {
                        ...initial.speakingLanguages
                          ..removeWhere((key, value) => key == tuple.value1)
                      };

                      final languageBackground = TeachingBackground(
                        learningLanguages: {...initial.learningLanguages},
                        speakingLanguages: newMap,
                        teachingLanguages: {...initial.teachingLanguages},
                      );

                      valueNotifier.value = valueNotifier.value
                          .copyWith(languageBackground: languageBackground);
                    } else {
                      final valueNotifier =
                          context.read<ValueNotifier<Mentor>>();
                      final initial = valueNotifier.value.languageBackground;
                      final newMap = {
                        ...initial.learningLanguages
                          ..removeWhere((key, value) => key == tuple.value1)
                      };

                      final languageBackground = TeachingBackground(
                        learningLanguages: newMap,
                        speakingLanguages: {...initial.speakingLanguages},
                        teachingLanguages: {...initial.teachingLanguages},
                      );

                      valueNotifier.value = valueNotifier.value
                          .copyWith(languageBackground: languageBackground);
                    }
                  }
                },
              ),
              title: Text(
                tuple.value1.toString(),
                style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(tuple.value2.toString(),
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Martel Sans')),
                  if (isTeach)
                    Text("\$10/hr",
                        style: TextStyle(
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Martel Sans'))
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

Future<void> addLanguage(
    {BuildContext context,
    bool isLearnerOrMentor = false,
    bool isTeach = false,
    bool isSpeak = false,
    bool isLearn = false}) async {
  final languageStr = await buildDialog(
    context,
    initialValue: '',
    dialog: () => LanguageDialog(),
    title: 'Please select your language',
  );

  if (languageStr != null && languageStr != '') {
    final proficiencyStr = await buildDialog(
      context,
      title: 'Please select the proficiency',
      dialog: () => ProficiencyDialog(),
      initialValue: LanguageProficiency.A1,
    );

    if (proficiencyStr != null) {
      if (isLearnerOrMentor && isLearn) {
        final valueNotifier = context.read<ValueNotifier<Learner>>();
        final initial = valueNotifier.value.languageBackground;

        final newMap = {...initial.learningLanguages}..putIfAbsent(
            LearningLanguage(parseLanguage(languageStr)),
            () => LanguageProficiency(proficiencyStr));

        final languageBackground = LearningBackground(
          learningLanguages: newMap,
          speakingLanguages: {...initial.speakingLanguages},
        );

        valueNotifier.value = valueNotifier.value
            .copyWith(languageBackground: languageBackground);
      }

      if (isLearnerOrMentor && isSpeak) {
        final valueNotifier = context.read<ValueNotifier<Learner>>();
        final initial = valueNotifier.value.languageBackground;

        final newMap = {...initial.speakingLanguages}..putIfAbsent(
            SpeakingLanguage(parseLanguage(languageStr)),
            () => LanguageProficiency(proficiencyStr));

        final languageBackground = LearningBackground(
          learningLanguages: {...initial.learningLanguages},
          speakingLanguages: newMap,
        );

        valueNotifier.value = valueNotifier.value
            .copyWith(languageBackground: languageBackground);
      }

      if (!isLearnerOrMentor) {
        if (isTeach) {
          final valueNotifier = context.read<ValueNotifier<Mentor>>();
          final initial = valueNotifier.value.languageBackground;

          final newMap = {...initial.speakingLanguages}..putIfAbsent(
              SpeakingLanguage(parseLanguage(languageStr)),
              () => LanguageProficiency(proficiencyStr));

          final languageBackground = TeachingBackground(
            learningLanguages: {...initial.learningLanguages},
            speakingLanguages: newMap,
            teachingLanguages: {...initial.teachingLanguages},
          );

          valueNotifier.value = valueNotifier.value
              .copyWith(languageBackground: languageBackground);
        } else if (isLearn) {
          final valueNotifier = context.read<ValueNotifier<Mentor>>();
          final initial = valueNotifier.value.languageBackground;

          final newMap = {...initial.speakingLanguages}..putIfAbsent(
              SpeakingLanguage(parseLanguage(languageStr)),
              () => LanguageProficiency(proficiencyStr));

          final languageBackground = TeachingBackground(
            learningLanguages: {...initial.learningLanguages},
            speakingLanguages: newMap,
            teachingLanguages: {...initial.teachingLanguages},
          );

          valueNotifier.value = valueNotifier.value
              .copyWith(languageBackground: languageBackground);
        } else {
          final valueNotifier = context.read<ValueNotifier<Mentor>>();
          final initial = valueNotifier.value.languageBackground;

          final newMap = {...initial.speakingLanguages}..putIfAbsent(
              SpeakingLanguage(parseLanguage(languageStr)),
              () => LanguageProficiency(proficiencyStr));

          final languageBackground = TeachingBackground(
            learningLanguages: {...initial.learningLanguages},
            speakingLanguages: newMap,
            teachingLanguages: {...initial.teachingLanguages},
          );

          valueNotifier.value = valueNotifier.value
              .copyWith(languageBackground: languageBackground);
        }
      }
    }
  }
}
