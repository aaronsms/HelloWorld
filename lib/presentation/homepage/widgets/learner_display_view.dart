import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';

class LearnerDisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Text(
        "Recommended Learners For You",
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontSize: 22,
            fontWeight: FontWeight.w700),
      ),
      SizedBox(
          height: 500,
          child: SingleChildScrollView(
              child: Card(
            elevation: 0,
            color: Palette.backgroundColor,
            child: Column(
              children: <Widget>[
                LearnerDisplay(
                    name: "Sample Learner 1",
                    active: 2,
                    distance: 1.0,
                    learning: [
                      LanguageSet(language: "Spanish", proficiency: 1)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(language: "Malay", proficiency: 3)
                    ]),
                LearnerDisplay(
                    name: "Sample Learner 2",
                    active: 3,
                    distance: 1.0,
                    learning: [
                      LanguageSet(language: "Korean", proficiency: 2)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(
                          language: "Mandarin (Chinese)", proficiency: 5)
                    ]),
                LearnerDisplay(
                    name: "Sample Learner 3",
                    active: 4,
                    distance: 1.0,
                    learning: [
                      LanguageSet(language: "French", proficiency: 2)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(language: "Japanese", proficiency: 5)
                    ]),
                LearnerDisplay(
                    name: "Sample Learner 4",
                    active: 1,
                    distance: 1.0,
                    learning: [
                      LanguageSet(language: "Japanese", proficiency: 1)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(
                          language: "Mandarin (Chinese)", proficiency: 4)
                    ])
              ],
            ),
          )))
    ]);
  }
}
