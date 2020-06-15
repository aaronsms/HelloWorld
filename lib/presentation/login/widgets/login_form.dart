import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/login/bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.4,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessage,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextFormField(
                    decoration: _buildInputDecoration(Icons.email, 'Email'),
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.emailChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.emailAddress.value.fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid email',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextFormField(
                    decoration: _buildInputDecoration(Icons.lock, 'Password'),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.passwordChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.password.value.fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                ),
                const SizedBox(height: 20.0),
                _buildLoginButton(context),
                const SizedBox(height: 20.0),
                _buildTextResponse(
                    'Forgot password?', 'Reset password', Routes.resetPassword),
                const SizedBox(height: 10.0),
                _buildTextResponse(
                    'New here?', 'Sign up for free!', Routes.register),
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: 120,
      child: RaisedButton(
        onPressed: () => context.bloc<LoginBloc>().add(
              const LoginEvent.loginUserWithEmailAndPassword(),
            ),
        color: Palette.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Text(
          'Log in',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(IconData icon, String textStr) {
    return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Palette.primaryColor,
      ),
      labelText: textStr,
      labelStyle: const TextStyle(color: Palette.primaryColor),
      fillColor: Colors.white,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(
          color: Palette.primaryColor,
          width: 2.5,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Palette.primaryColor,
          width: 2.5,
        ),
      ),
    );
  }

  Widget _buildTextResponse(String textStr1, String textStr2, String route) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '$textStr1 ',
            style: const TextStyle(color: Palette.primaryColor),
          ),
          GestureDetector(
            onTap: () => Routes.sailor(route),
            child: Text(
              textStr2,
              style: const TextStyle(color: Palette.secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
