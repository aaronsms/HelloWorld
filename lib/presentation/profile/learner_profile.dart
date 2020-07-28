import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:helloworld/presentation/messenger/chat_screen.dart';
import 'package:helloworld/presentation/profile/widgets/profile_form.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/name_tag.dart';
import 'package:helloworld/presentation/profile/widgets/biography.dart';
import 'package:helloworld/presentation/profile/widgets/user_menu.dart';
import 'package:helloworld/presentation/scheduling/schedule_page.dart';

class LearnerProfile extends StatelessWidget {
  final Learner learner;

  const LearnerProfile({Key key, @required this.learner}) : super(key: key);

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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return BlocProvider(
                                    create: (_) => MessageBloc()
                                      ..add(MessageEvent.getMessagesWith(
                                          learner.userId)),
                                    child: ChatScreen(
                                      otherUser: learner.name.getOrCrash(),
                                      otherUserId: learner.userId,
                                    ));
                              },
                            ),
                          );
                        },
                        child: const Image(
                          image: AssetImage('assets/images/messenger_logo.png'),
                        ),
                      ),
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
                    backgroundImage: learner.profilePicture.value.fold(
                      (l) => const AssetImage('assets/images/avatar.png'),
                      (r) => FileImage(
                        learner.profilePicture.getOrCrash(),
                      ),
                    ),
                  ),
                )),
            NameTag(name: learner.name.getOrCrash(), type: "LEARNER"),
            BiographyUi(bio: learner.biography.getOrCrash()),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0,
              indent: 10,
              endIndent: 10,
            ),
            Builder(builder: (context) {
              final List<LanguageSet> learningLanguageSet = [];
              final list = learner.languageBackground.learningLanguages;
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
              final list = learner.languageBackground.speakingLanguages;
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
              final locations = learner.location
                  .map((e) => LocationUi(
                      latlng: e.value1, location: e.value2.getOrCrash()))
                  .toList();

              return ProfileForm(
                title: "PREFERRED LOCATIONS",
                locations: locations,
              );
            }),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(
                onPressed: () {
                  Routes.sailor(Routes.schedule);
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => SchedulePage()),
//                  );
                },
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
