import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class SignUpAccount extends StatefulWidget {
  @override
  _SignUpAccountState createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
  bool _obscureText = true;
  String _password;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Palette.primaryColor,
            title: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold))),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Image(image: AssetImage('assets/images/logo.png')))
            ],
          )),
      body: SizedBox(
          child: Wrap(alignment: WrapAlignment.center, children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Image(
              image: AssetImage('assets/images/learner_step1.png'),
              height: 100,
              width: 200,
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Theme(
                data: ThemeData(
                  primaryColor: Palette.primaryColor,
                ),
                child: TextFormField(
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.perm_identity, color: Palette.primaryColor),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Full Name",
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
                ),
                child: TextFormField(
                  validator: (input) => input.length < 8
                      ? "Password needs to be at least 8 characters."
                      : null,
                  onSaved: (input) => _password = input,
                  obscureText: _obscureText,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () => _toggle(),
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: Palette.primaryColor),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Password",
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
                  obscureText: _obscureText,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () => _toggle(),
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: Palette.primaryColor),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Confirm Password",
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
                ),
                child: TextFormField(
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Palette.primaryColor,
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                        color: Palette.primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ))),
        Container(
            padding: EdgeInsets.only(top: 150.0),
            child: RaisedButton(
              color: Palette.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              onPressed: () {},
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ])),
    );
  }
}
