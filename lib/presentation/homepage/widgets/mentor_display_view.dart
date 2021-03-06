import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';
import 'package:helloworld/application/schedule_requests/display_bloc.dart';

class MentorDisplayView extends StatelessWidget {
  final Random rng = Random();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            "Recommended Mentors For You",
            style: TextStyle(
                color: Palette.primaryColor,
                fontFamily: 'Martel Sans',
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: BlocBuilder<DisplayBloc, DisplayState>(
                builder: (context, state) {
                  return state.map<Widget>(
                    (_) => Container(color: Colors.white),
                    loading: (_) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loadSuccess: (value) {
                      final listMentors = [...value.listOfMentor];
                      final options = value.filterOptions;

                      final learningOptions = options.value1;
                      final speakingOptions = options.value2;
                      final teachingOptions = options.value3;

                      listMentors.removeWhere((mentor) {
                        return (learningOptions.isNotEmpty && !mentor.languageBackground.learningLanguages.keys.any((language) => learningOptions.contains(language)))
                        || (speakingOptions.isNotEmpty && !mentor.languageBackground.speakingLanguages.keys.any((language) => speakingOptions.contains(language)))
                        || (teachingOptions.isNotEmpty && !mentor.languageBackground.teachingLanguages.keys.any((language) => teachingOptions.contains(language)))
                        || !mentor.name.getOrCrash().toLowerCase().contains(value.searchText.toLowerCase());;
                      });

                      final rate = (rng.nextInt(2) + 2) * 5;

                      return ListView.separated(
                        padding: const EdgeInsets.all(12.0),
                        physics: const BouncingScrollPhysics(),
                        itemCount: listMentors.length,
                        separatorBuilder: (_, index) => const Divider(
                            thickness: 1.5, indent: 15, endIndent: 15),
                        itemBuilder: (_, index) {
                          final List<LanguageSet> speakingLanguageSet = [];
                          final List<LanguageSet> teachingLanguageSet = [];

                          listMentors[index]
                              .languageBackground
                              .speakingLanguages
                              .forEach(
                                (k, v) => speakingLanguageSet.add(
                                  LanguageSet(
                                    language: languageToString(k.getOrCrash()),
                                    proficiency: v.toDouble(),
                                  ),
                                ),
                              );
                          listMentors[index]
                              .languageBackground
                              .teachingLanguages
                              .forEach(
                                (k, v) => teachingLanguageSet.add(
                                  LanguageSet(
                                    language: languageToString(k.getOrCrash()),
                                    proficiency: v.toDouble(),
                                  ),
                                ),
                              );
                          return MentorDisplay(
                            name: listMentors[index].name.getOrCrash(),
                            active: 2,
                            distance: 1.0,
                            rates: rate.toDouble(),
                            teaching: teachingLanguageSet,
                            common: speakingLanguageSet,
                            display: listMentors[index]
                                .profilePicture
                                .value
                                .fold(
                                    (l) => const AssetImage(
                                        'assets/images/avatar.png'),
                                    (r) => FileImage(r)),
                            userId: listMentors[index].userId,
                          );
                        },
                      );
                    },
                    loadFailure: (_) => Container(color: Colors.white),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
