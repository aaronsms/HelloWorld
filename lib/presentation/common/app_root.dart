import 'package:flutter/material.dart';
import 'package:helloworld/presentation/login/login_page.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: LoginPage(),
      theme: ThemeData(),
    );
  }
}
