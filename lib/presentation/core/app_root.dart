import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/profile/learner_profile.dart';

import 'routes.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'HelloWorld!<>',
      home: LearnerProfile(),
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
        accentColor: Palette.secondaryColor,
      ),
      navigatorKey: Routes.sailor.navigatorKey,
      onGenerateRoute: Routes.sailor.generator(),
    );
  }
}
