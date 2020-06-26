import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';

class MentorDisplayView extends StatelessWidget {
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
              child: ListView.separated(
                padding: const EdgeInsets.all(12.0),
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                separatorBuilder: (_, index) =>
                    const Divider(thickness: 1.5, indent: 15, endIndent: 15),
                itemBuilder: (_, index) => const MentorDisplay(
                    name: "Jack Ma",
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
