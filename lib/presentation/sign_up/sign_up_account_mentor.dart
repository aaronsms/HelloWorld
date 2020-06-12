import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/sign_up/header.dart';

class SignUpAccountMentor extends StatefulWidget {
  @override
  _SignUpAccountMentorState createState() => _SignUpAccountMentorState();
}

class _SignUpAccountMentorState extends State<SignUpAccountMentor> {
  bool _obscureText = true;
  final _name = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  final _email = TextEditingController();
  final _age = TextEditingController();
  bool _validateName = false;
  bool _validatePassword = false;
  bool _validateConfirm = false;
  bool _validateEmail = false;
  bool _validateAge = false;
  bool _invalidAge = false;
  // String _password;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(80.0), child: Header()),
      body: SingleChildScrollView(
          child: Wrap(alignment: WrapAlignment.center, children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Image(
              image: AssetImage('assets/images/mentor_step1.png'),
              height: 150,
              width: 300,
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Theme(
                data: ThemeData(
                  primaryColor: Palette.primaryColor,
                ),
                child: TextFormField(
                  controller: _name,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    errorText: _validateName ? 'Field cannot be empty!' : null,
                    prefixIcon:
                        Icon(Icons.perm_identity, color: Palette.primaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      borderSide: BorderSide(
                          color:
                              _validateName ? Colors.red : Palette.primaryColor,
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                    border: OutlineInputBorder(
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
                  controller: _password,
                  validator: (input) => input.length < 8
                      ? "Password needs to be at least 8 characters."
                      : null,
                  // onSaved: (input) => _password = input,
                  obscureText: _obscureText,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    errorText:
                        _validatePassword ? 'Field cannot be empty!' : null,
                    prefixIcon: IconButton(
                        onPressed: () => _toggle(),
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: Palette.primaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
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
                  controller: _confirm,
                  obscureText: _obscureText,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    errorText:
                        _validateConfirm ? 'Field cannot be empty!' : null,
                    prefixIcon: IconButton(
                        onPressed: () => _toggle(),
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: Palette.primaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
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
                  controller: _email,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    errorText: _validateEmail ? 'Field cannot be empty!' : null,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Palette.primaryColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      borderSide: BorderSide(
                          color: _validateEmail
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
                    labelText: "Email Address",
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
                  controller: _age,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    errorText: _validateAge
                        ? 'Field cannot be empty!'
                        : _invalidAge
                            ? 'You need to be AT LEAST 18 years of age to apply as a Mentor!'
                            : null,
                    prefixIcon: Icon(
                      Icons.calendar_today,
                      color: Palette.primaryColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      borderSide: BorderSide(
                          color: _validateEmail
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
                    labelText: "Age",
                    labelStyle: TextStyle(
                        color: Palette.primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ))),
        Container(
            child: Text(
                "Note: To be a mentor, you need to be at least 18 years old!",
                style: TextStyle(
                  height: 1.2,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Martel Sans',
                  fontSize: 12,
                ))),
        Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: RaisedButton(
              color: Palette.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              onPressed: () {
                setState(() {
                  _name.text.isEmpty
                      ? _validateName = true
                      : _validateName = false;
                  _password.text.isEmpty
                      ? _validatePassword = true
                      : _validatePassword = false;
                  _confirm.text.isEmpty
                      ? _validateConfirm = true
                      : _validateConfirm = false;
                  _email.text.isEmpty
                      ? _validateEmail = true
                      : _validateEmail = false;
                  _age.text.isEmpty
                      ? _validateAge = true
                      : _validateAge = false;
                  _age.text.compareTo('18') < 1
                      ? _invalidAge = true
                      : _invalidAge = false;
                });
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ])),
    );
  }
}
