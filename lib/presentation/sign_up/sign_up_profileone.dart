import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/sign_up/header.dart';
import 'package:helloworld/presentation/sign_up/languagelearning.dart';
import 'package:helloworld/presentation/sign_up/languageselect.dart';
import 'package:helloworld/presentation/sign_up/languagespeak.dart';
import 'package:helloworld/presentation/sign_up/profilepicture.dart';
import 'package:helloworld/presentation/sign_up/biography.dart';
import 'package:helloworld/presentation/sign_up/locationpreferred.dart';
import 'package:helloworld/presentation/sign_up/locationselect.dart';

class SignUpProfileOne extends StatefulWidget {
  @override
  _SignUpProfileOneState createState() => _SignUpProfileOneState();
}

class _SignUpProfileOneState extends State<SignUpProfileOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: Header()),
        body: SingleChildScrollView(
          child: SizedBox(
              child: Column(children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Image(
                  image: AssetImage('assets/images/learner_step2.png'),
                  height: 100,
                  width: 200,
                )),
            Container(child: ProfilePicture()),
            Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Add your display picture',
                  style: TextStyle(
                      fontFamily: 'Martel Sans', fontStyle: FontStyle.italic),
                )),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Biography(),
            ),
            Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Languages Learning',
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900,
                      fontSize: 24.0,
                      color: Palette.primaryColor),
                )),
            Container(
                child: Card(
                    color: Palette.tertiaryColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: LanguageLearning()),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: LanguageSelect(),
                        )
                      ],
                    ))),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Languages You Speak",
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900,
                      fontSize: 24.0,
                      color: Palette.primaryColor),
                )),
            Container(
                child: Card(
                    color: Palette.tertiaryColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: LanguageSpeak()),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: LanguageSelect(),
                        )
                      ],
                    ))),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Preferred Locations",
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900,
                      fontSize: 24.0,
                      color: Palette.primaryColor),
                )),
            Container(
                child: Card(
                    color: Palette.tertiaryColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10.0),
                            child: LocationPreferred()),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: LocationSelect(),
                        )
                      ],
                    ))),
            Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: RaisedButton(
                  color: Palette.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ])),
        ));
  }
}
