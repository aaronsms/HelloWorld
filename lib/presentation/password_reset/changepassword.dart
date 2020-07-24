import 'package:flutter/material.dart';
import 'package:helloworld/presentation/common/palette.dart';
import 'package:helloworld/presentation/password_reset/header.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  bool _validatePassword = false;
  bool _validateConfirm = false;
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: ResetPasswordHeader()),
        body: Container(
            child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Theme(
                      data: ThemeData(
                        primaryColor: Palette.primaryColor,
                      ),
                      child: TextFormField(
                        controller: _password,
                        validator: (input) {
                          if (input.isEmpty) {
                            return "Field cannot be empty!";
                          } else if (input.length < 8) {
                            return "Password needs to be at least 8 characters!";
                          } else {
                            return null;
                          }
                        },
                        obscureText: _obscureText,
                        style: TextStyle(color: Palette.primaryColor),
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () => _toggle(),
                              icon: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Palette.primaryColor),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0)),
                            borderSide: BorderSide(
                                color: _validatePassword
                                    ? Colors.red
                                    : Palette.primaryColor,
                                style: BorderStyle.solid,
                                width: 2),
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: "New Password",
                          labelStyle: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Theme(
                      data: ThemeData(
                          primaryColor: Palette.primaryColor,
                          hintColor: Palette.primaryColor),
                      child: TextFormField(
                        validator: (value) {
                          if (value != _password.text) {
                            return "Passwords do not match!";
                          } else if (value.isEmpty) {
                            return "Field cannot be empty!";
                          } else {
                            return null;
                          }
                        },
                        controller: _confirm,
                        obscureText: _obscureText,
                        style: TextStyle(color: Palette.primaryColor),
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () => _toggle(),
                              icon: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: Palette.primaryColor),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0)),
                            borderSide: BorderSide(
                                color: _validateConfirm
                                    ? Colors.red
                                    : Palette.primaryColor,
                                style: BorderStyle.solid,
                                width: 2),
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: "Confirm New Password",
                          labelStyle: TextStyle(
                              color: Palette.primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
              Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: RaisedButton(
                    color: Palette.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    onPressed: () {
                      _form.currentState.validate();
                    },
                    child: Text(
                      'Reset Password',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        )));
  }
}
