import 'package:flutter/material.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/preview/booking_system.dart';
import 'package:helloworld/presentation/preview/messenger.dart';
import 'package:helloworld/presentation/preview/rent_mentor.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelloWorld!<>',
      home: MentorRenting(),
      theme: ThemeData(),
    );
  }
}
