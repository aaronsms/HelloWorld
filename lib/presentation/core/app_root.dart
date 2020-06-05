import 'package:flutter/material.dart';
import 'package:helloworld/presentation/sign_up/sign_up_pre.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: SignUpPre(),
      theme: ThemeData(),
    );
  }
}
