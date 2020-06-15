import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';

class VerifiedEmailLearnerPage extends StatelessWidget {
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
                  image: AssetImage('assets/images/verifiedemail.png'),
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
                  "You may now start matching up and connecting with a mentor or a learner!",
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
