import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

import 'header.dart';

class SubmitEmailPage extends StatefulWidget {
  @override
  _SubmitEmailPageState createState() => _SubmitEmailPageState();
}

class _SubmitEmailPageState extends State<SubmitEmailPage> {
  final _email = TextEditingController();
  bool _validateEmail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80.0), child: ResetPasswordHeader()),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Please enter your email.",
              style: TextStyle(
                  fontFamily: 'Martel Sans',
                  fontSize: 24,
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w900),
            ),
            Container(
                padding: const EdgeInsets.all(10.0),
                child: Theme(
                    data: ThemeData(
                      primaryColor: Palette.primaryColor,
                    ),
                    child: TextFormField(
                      controller: _email,
                      style: TextStyle(color: Palette.primaryColor),
                      decoration: InputDecoration(
                        errorText:
                            _validateEmail ? 'Field cannot be empty!' : null,
                        prefixIcon:
                            Icon(Icons.email, color: Palette.primaryColor),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: _validateEmail
                                  ? Colors.red
                                  : Palette.primaryColor,
                              width: 2),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10.0),
                      ),
                    ))),
            Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50),
                child: Text(
                    "If your email has been registered, a recovery code will be sent to your email.",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ))),
            ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  "Back to Login",
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Martel Sans'),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _email.text.isEmpty
                        ? _validateEmail = true
                        : _validateEmail = false;
                  });
                },
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Text(
                  "Send Code",
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Martel Sans'),
                ),
              ),
            ])
          ],
        )));
  }
}
