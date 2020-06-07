import 'package:flutter/material.dart';
import 'package:helloworld/presentation/sign_up/sign_up_pre.dart';
import 'package:helloworld/presentation/sign_up/sign_up_account.dart';
import 'package:helloworld/presentation/sign_up/sign_up_profileone.dart';
import 'package:helloworld/presentation/sign_up/languageselect.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: SignUpProfileOne(),
      theme: ThemeData(),
    );
  }
}
