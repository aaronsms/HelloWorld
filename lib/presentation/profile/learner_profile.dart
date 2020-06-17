import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/profile_form.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/name_tag.dart';
import 'package:helloworld/presentation/profile/widgets/biography.dart';

class LearnerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          const NameTag(name: "James Tan", type: "LEARNER"),
          const Biography(
              bio: "Hello there! I am learning Japanese and French."),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(title: "LEARNING", languages: [
            LanguageSet(
              language: "Japanese",
              proficiency: 2,
            ),
            LanguageSet(language: "French", proficiency: 1)
          ]),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(title: "ALSO SPEAKS", languages: [
            LanguageSet(
              language: "English",
              proficiency: 4,
            ),
            LanguageSet(language: "Mandarin (Chinese)", proficiency: 5),
            LanguageSet(language: "Korean", proficiency: 5)
          ]),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(title: "PREFERRED LOCATIONS", locations: [
            Location(location: 'Starbucks @Hillion Mall'),
            Location(
              location: 'Woodlands Regional Library',
            )
          ]),
          Container(
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(
                  onPressed: () {},
                  color: Palette.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Text('View Schedule',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Martel Sans',
                          fontWeight: FontWeight.w900))))
        ])));
  }
}
