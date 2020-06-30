import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/login/bloc.dart';
import 'package:helloworld/injection.dart';
import 'package:helloworld/presentation/login/widgets/login_banner.dart';
import 'package:helloworld/presentation/login/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state.isSubmitting) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  LoginBanner(),
                  LoginForm(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
