import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/auth/auth_bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/login/login_page.dart';
import 'package:helloworld/presentation/requests/request_page.dart';
import 'package:helloworld/presentation/profile/learner_profile.dart';
import 'package:helloworld/presentation/profile/mentor_profile.dart';
import 'package:helloworld/presentation/profile/widgets/review_page.dart';
import 'package:helloworld/presentation/scheduling/schedule_page.dart';
import 'package:helloworld/presentation/scheduling/confirmation_page.dart';
import 'package:helloworld/presentation/scheduling/confirmed_page.dart';
import 'package:helloworld/presentation/scheduling/edit_schedule_page.dart';
import 'package:helloworld/presentation/messenger/messenger_main.dart';

import 'routes.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
      ),
    );
  }
}
