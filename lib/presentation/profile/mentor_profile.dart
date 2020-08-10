import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/chat_screen.dart';
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
  final Mentor mentor;

  const MentorProfile({Key key, @required this.mentor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.keyboard_arrow_left,
                          color: Palette.primaryColor),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () async {
                            final userId = await ownUserId;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return BlocProvider(
                                      create: (_) => MessageBloc()
                                        ..add(MessageEvent.getMessagesWith(
                                            mentor.userId)),
                                      child: ChatScreen(
                                        userId: userId,
                                        otherUser: mentor.name.getOrCrash(),
                                        otherUserId: mentor.userId,
                                      ));
                                },
                              ),
                            );
                          },
                          child: const Image(
                              image: AssetImage(
                                  'assets/images/messenger_logo.png'))),
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
                  child: CircleAvatar(
                    backgroundImage: mentor.profilePicture.value.fold(
                      (l) => const AssetImage('assets/images/avatar.png'),
                      (r) => FileImage(
                        mentor.profilePicture.getOrCrash(),
                      ),
                    ),
                  ),
                )),
            NameTag(name: mentor.name.getOrCrash(), type: "MENTOR"),
            BiographyUi(bio: mentor.biography.getOrCrash()),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),
            Builder(builder: (context) {
              final List<LanguageSet> teachingLanguageSet = [];
              final list = mentor.languageBackground.teachingLanguages;
              list.forEach((key, value) {
                teachingLanguageSet.add(
                  LanguageSet(
                    language: languageToString(key.getOrCrash()),
                    proficiency: value.toDouble(),
                  ),
                );
              });

              return ProfileForm(
                  title: "TEACHING", languages: teachingLanguageSet);
            }),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),
            Builder(builder: (context) {
              final List<LanguageSet> learningLanguageSet = [];
              final list = mentor.languageBackground.learningLanguages;
              list.forEach((key, value) {
                learningLanguageSet.add(
                  LanguageSet(
                    language: languageToString(key.getOrCrash()),
                    proficiency: value.toDouble(),
                  ),
                );
              });

              return ProfileForm(
                  title: "LEARNING", languages: learningLanguageSet);
            }),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),
            Builder(builder: (context) {
              final List<LanguageSet> speakingLanguageSet = [];
              final list = mentor.languageBackground.speakingLanguages;
              list.forEach((key, value) {
                speakingLanguageSet.add(
                  LanguageSet(
                    language: languageToString(key.getOrCrash()),
                    proficiency: value.toDouble(),
                  ),
                );
              });

              return ProfileForm(
                  title: "ALSO SPEAKS", languages: speakingLanguageSet);
            }),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),
            Builder(builder: (context) {
              final locations = mentor.location
                  .map((e) => LocationUi(
                      latlng: e.value1, location: e.value2.getOrCrash()))
                  .toList();

              return ProfileForm(
                title: "PREFERRED LOCATIONS",
                locations: locations,
              );
            }),
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
                child: Text(
                  'View Schedule',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
