import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ResetPasswordHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      title: Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text('Reset Password',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Martel Sans',
                  fontSize: 28,
                  fontWeight: FontWeight.w900))),
      actions: <Widget>[
        Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ))
      ],
    );
  }
}
