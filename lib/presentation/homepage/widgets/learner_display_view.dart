import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';
import 'package:helloworld/application/schedule_requests/display_bloc.dart';

class LearnerDisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            "Recommended Learners For You",
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
                      final listLearners = value.listOfLearner;

                      return ListView.separated(
                        padding: const EdgeInsets.all(12.0),
                        physics: const BouncingScrollPhysics(),
                        itemCount: value.listOfLearner.length,
                        separatorBuilder: (_, index) => const Divider(
                            thickness: 1.5, indent: 15, endIndent: 15),
                        itemBuilder: (_, index) {
                          final List<LanguageSet> learningLanguageSet = [];
                          final List<LanguageSet> speakingLanguageSet = [];

                          listLearners[index]
                              .languageBackground
                              .learningLanguages
                              .forEach(
                                (k, v) => learningLanguageSet.add(
                                  LanguageSet(
                                    language: languageToString(k.getOrCrash()),
                                    proficiency: v.getOrCrash().toString(),
                                  ),
                                ),
                              );
                          listLearners[index]
                              .languageBackground
                              .speakingLanguages
                              .forEach(
                                (k, v) => speakingLanguageSet.add(
                                  LanguageSet(
                                    language: languageToString(k.getOrCrash()),
                                    proficiency: v.getOrCrash().toString(),
                                  ),
                                ),
                              );
                          return LearnerDisplay(
                            name: listLearners[index].name.getOrCrash(),
                            active: 2,
                            distance: 1.0,
                            learning: learningLanguageSet,
                            common: speakingLanguageSet,
                            display: listLearners[index]
                                .profilePicture
                                .value
                                .fold(
                                    (l) => const AssetImage(
                                        'assets/images/avatar.png'),
                                    (r) => FileImage(r)),
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
