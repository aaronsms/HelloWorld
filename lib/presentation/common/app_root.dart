import 'package:flutter/material.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/preview/booking_system.dart';
import 'package:helloworld/presentation/preview/messenger.dart';
import 'package:helloworld/presentation/preview/rent_mentor.dart';
import 'package:helloworld/presentation/register/register_page.dart';
import 'package:helloworld/presentation/passwordreset/submitemail.dart';
// import 'package:helloworld/presentation/homepage/learner_display.dart';
import 'package:helloworld/presentation/homepage/landing_page.dart';
import 'package:helloworld/presentation/homepage/widgets/search_profile_filters.dart';
import 'package:helloworld/presentation/homepage/widgets/search_bar.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelloWorld!<>',
      home: LandingPage(),
      theme: ThemeData(),
    );
  }
}
