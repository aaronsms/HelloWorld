import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/sign_up/header.dart';

class VerifiedEmailMentor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: Header()),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 35.0, bottom: 45.0),
                child: Image(
                  image: AssetImage('assets/images/applicationmentor.png'),
                  height: 225,
                )),
            Text("Your email has been verified.",
                style: TextStyle(
                  fontFamily: "Martel Sans",
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                )),
            Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Your application as a mentor has been successfully received by our team. By next week, you should have received the outcome of your application in your email.",
                  style: TextStyle(
                      height: 1.5,
                      color: Colors.grey,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                )),
            Container(
                padding: EdgeInsets.only(top: 150.0),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Text(
                    "Back to Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Palette.primaryColor,
                ))
          ],
        ));
  }
}
