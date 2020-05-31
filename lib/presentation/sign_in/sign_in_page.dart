import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Color(0xFF29335C),
              width: double.infinity,
              padding: EdgeInsets.all(40.0),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: BlocProvider(
              create: (_) {}, // TODO: Injection then provide Sign_In_Bloc
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0,),
                  Text("Don't have an account yet? Create an account"),
                  Text("Forget password? Reset password"),
                  RaisedButton(
                    child: Text("Sign in"),
                    onPressed: null,
                    color: Color(0xFF29335C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
