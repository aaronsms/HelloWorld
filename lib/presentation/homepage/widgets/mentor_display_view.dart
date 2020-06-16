import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';

class MentorDisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Text(
        "Recommended Mentors For You",
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
                MentorDisplay(
                    name: "Sample Mentor 1",
                    rates: 10,
                    active: 2,
                    distance: 1.0,
                    teaching: [
                      LanguageSet(language: "Spanish", proficiency: 5)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 4),
                      LanguageSet(
                          language: "Mandarin (Chinese)", proficiency: 5)
                    ]),
                MentorDisplay(
                    name: "Sample Mentor 2",
                    rates: 8.50,
                    active: 1,
                    distance: 0.2,
                    teaching: [
                      LanguageSet(language: "Korean", proficiency: 5)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(language: "Malay", proficiency: 4)
                    ]),
                MentorDisplay(
                    name: "Sample Mentor 3",
                    rates: 9,
                    active: 5,
                    distance: 0.3,
                    teaching: [
                      LanguageSet(language: "French", proficiency: 5)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(
                          language: "Mandarin (Chinese)", proficiency: 5)
                    ]),
                MentorDisplay(
                    name: "Sample Mentor 4",
                    rates: 7,
                    active: 3,
                    distance: 0.8,
                    teaching: [
                      LanguageSet(language: "Japanese", proficiency: 5)
                    ],
                    common: [
                      LanguageSet(language: "English", proficiency: 5),
                      LanguageSet(
                          language: "Mandarin (Chinese)", proficiency: 5)
                    ]),
              ],
            ),
          )))
    ]);
  }
}
