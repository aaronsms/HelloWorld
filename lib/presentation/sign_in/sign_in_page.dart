import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/auth/sign_in/bloc.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/sign_in/widgets/sign_in_banner.dart';
import 'package:helloworld/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SignInBanner(),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
