import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/login/bloc.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/login/widgets/sign_in_banner.dart';
import 'package:helloworld/presentation/login/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
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
