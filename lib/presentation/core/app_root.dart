import 'package:flutter/material.dart';
import 'package:helloworld/presentation/sign_up/sign_up_pre.dart';
import 'package:helloworld/presentation/sign_up/sign_up_account_learner.dart';
import 'package:helloworld/presentation/sign_up/sign_up_profilelearner.dart';
import 'package:helloworld/presentation/sign_up/languageselect.dart';
import 'package:helloworld/presentation/sign_up/verify_email.dart';
import 'package:helloworld/presentation/sign_up/verified_email.dart';
import 'package:helloworld/presentation/sign_up/sign_up_account_mentor.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: SignUpAccountMentor(),
      theme: ThemeData(),
    );
  }
}
