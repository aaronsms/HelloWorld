import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/auth/auth_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';
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
        home: BlocProvider(
          create: (_) => MessageBloc()..add(const MessageEvent.fetchConversations()),
          child: MessengerMain(),
        ),
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
