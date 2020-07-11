import 'package:flutter/material.dart';
import 'package:helloworld/presentation/common/palette.dart';
import 'package:helloworld/presentation/passwordreset/header.dart';

class ResetComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: ResetPasswordHeader()),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 35.0, bottom: 45.0),
                child: Image(
                  image: AssetImage('assets/images/password_reset.png'),
                  height: 225,
                )),
            Container(
                padding: EdgeInsets.all(15.0),
                child: Text("You've successfully reset your password.",
                    style: TextStyle(
                      fontFamily: "Martel Sans",
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ))),
            Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Start matching up and connecting with a mentor or a learner!",
                  style: TextStyle(
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
                    "Go to Homepage",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Palette.primaryColor,
                ))
          ],
        ));
  }
}
