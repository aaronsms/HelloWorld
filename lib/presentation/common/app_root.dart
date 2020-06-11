import 'package:flutter/material.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/preview/booking_system.dart';
import 'package:helloworld/presentation/preview/messenger.dart';
import 'package:helloworld/presentation/preview/rent_mentor.dart';
import 'package:helloworld/presentation/passwordreset/submitemail.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: SubmitEmail(),
      theme: ThemeData(),
    );
  }
}
