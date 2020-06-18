import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/test_page.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/sign_up/register_account_mentor_page.dart';
import 'package:helloworld/presentation/sign_up/register_profile_mentor_page.dart';

import 'routes.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      debugShowMaterialGrid: true,
      title: 'HelloWorld!<>',
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
        accentColor: Palette.secondaryColor,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
            color: Palette.primaryColor,
          ),
          headline6: TextStyle(
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
            color: Palette.primaryColor,
          ),
        ),
      ),
      navigatorKey: Routes.sailor.navigatorKey,
      onGenerateRoute: Routes.sailor.generator(),
    );
  }
}
