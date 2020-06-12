import 'package:flutter/material.dart';
import 'package:helloworld/presentation/register/widgets/choose_learner_or_mentor_banner.dart';
import 'package:helloworld/presentation/register/widgets/create_account_banner.dart';
import 'package:helloworld/presentation/register/widgets/next_button.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CreateAccountBanner(),
          ChooseLearnerOrMentorBanner(),
          NextButton(),
        ],
      ),
    );
  }
}
