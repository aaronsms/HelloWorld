import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/profile_form.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/name_tag.dart';
import 'package:helloworld/presentation/profile/widgets/biography.dart';
import 'package:helloworld/presentation/profile/widgets/ratings_form.dart';
import 'package:helloworld/presentation/profile/widgets/portfolio.dart';
import 'package:helloworld/presentation/profile/widgets/review_page.dart';
import 'package:helloworld/presentation/profile/widgets/user_menu.dart';
import 'package:helloworld/presentation/profile/widgets/ratings.dart';
import 'package:helloworld/presentation/profile/widgets/charge.dart';

class MentorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
              Widget>[
            IconButton(
                icon: Icon(Icons.keyboard_arrow_left,
                    color: Palette.primaryColor),
                onPressed: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    onTap: () {},
                    child: const Image(
                        image: AssetImage('assets/images/messenger_logo.png'))),
                UserMenu()
              ],
            )
          ]),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 105,
                height: 105,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Palette.primaryColor,
                    width: 3.0,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              )),
          const NameTag(name: "Mentor Name", type: "MENTOR"),
          const Biography(
              bio: "Hello there! I am learning Japanese and French."),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(title: "TEACHING", languages: [
            LanguageSet(
              language: "Spanish",
              proficiency: 5,
            ),
            LanguageSet(
              language: "Thai",
              proficiency: 5,
            ),
          ]),
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
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(title: "CHARGING RATES", charges: [
            Charge(
              charge: 10.0,
              language: 'Spanish',
            ),
            Charge(
              charge: 10.50,
              language: 'Thai',
            )
          ]),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const ProfileForm(
            title: "QUALIFICATIONS",
            qualifications: <Portfolio>[
              Portfolio(
                qualification: "Attained Grade 'A' in GCSE O-LEVEL Spanish",
              ),
              Portfolio(
                qualification: "Attained Grade 'A' in GCSE A-LEVEL Spanish",
              )
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 0,
            indent: 10,
            endIndent: 10,
          ),
          const RatingsForm(
              title: "RATINGS",
              rating: Ratings(numberOfReviews: 25, rating: 4.0)),
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
