import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';
import 'package:helloworld/presentation/sign_up/widgets/language_selection_dashboard.dart';
import 'package:helloworld/presentation/sign_up/widgets/profile_picture.dart';
import 'package:helloworld/presentation/sign_up/widgets/biography.dart';
import 'package:helloworld/presentation/sign_up/widgets/locationpreferred.dart';
import 'package:helloworld/presentation/sign_up/widgets/register_steps_indicator.dart';

class RegisterProfileLearnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const RegisterStepsIndicator(
              imagePath: 'assets/images/learner_step2.png',
              height: 100,
              width: 300,
            ),
            ProfilePictureAvatar(),
            const SizedBox(height: 10.0),
            const Text(
              'Add your display picture',
              style: TextStyle(
                  fontFamily: 'Martel Sans', fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10.0),
            Biography(),
            const SizedBox(height: 10.0),

            // Languages Learning title
            Text(
              'Languages Learning',
              style: Theme.of(context).textTheme.headline1,
            ),
            const LanguageSelectionDashboard(isLearn: true),
            const SizedBox(height: 20.0),

            // Languages You Speak title
            Text(
              "Languages You Speak",
              style: Theme.of(context).textTheme.headline1,
            ),
            const LanguageSelectionDashboard(isSpeak: true),
            const SizedBox(height: 20.0),

            // Preferred locations
            Text(
              "Preferred Locations",
              style: Theme.of(context).textTheme.headline1,
            ),
            Card(
              color: Palette.tertiaryColor,
              child: Column(
                children: <Widget>[
                  LocationPreferred(),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.add_circle,
                      color: Palette.primaryColor,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            RaisedButton(
              color: Palette.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              onPressed: () {
//                  BlocProvider.of<RegisterProfileBloc>(context).add(
//                      RegisterProfileEvent.teachingLanguageAdded(
//                          Language.spanish, LanguageProficiency.b2()));
//                    Routes.sailor(Routes.mentorQualification);
              },
              child: Text(
                'Done',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
