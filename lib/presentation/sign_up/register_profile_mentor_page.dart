import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';
import 'package:helloworld/presentation/sign_up/widgets/languagelearning.dart';
import 'package:helloworld/presentation/sign_up/widgets/languageselect.dart';
import 'package:helloworld/presentation/sign_up/widgets/languagespeak.dart';
import 'package:helloworld/presentation/sign_up/widgets/profilepicture.dart';
import 'package:helloworld/presentation/sign_up/widgets/biography.dart';
import 'package:helloworld/presentation/sign_up/widgets/locationpreferred.dart';
import 'package:helloworld/presentation/sign_up/widgets/locationselect.dart';
import 'package:helloworld/presentation/sign_up/widgets/languageteachselect.dart';
import 'package:helloworld/presentation/sign_up/widgets/languageteaching.dart';

class RegisterProfileMentorPage extends StatefulWidget {
  @override
  _RegisterProfileMentorPageState createState() => _RegisterProfileMentorPageState();
}

class _RegisterProfileMentorPageState extends State<RegisterProfileMentorPage> {
  createLanguageAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Select a language"),
            content: LanguageSelect(),
            actions: <Widget>[
              ButtonBar(children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                  color: Palette.primaryColor,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Add"),
                  color: Palette.primaryColor,
                ),
              ])
            ],
          );
        });
  }

  createLanguageTeachAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Select a language"),
            content: LanguageTeachSelect(),
            actions: <Widget>[
              ButtonBar(children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                  color: Palette.primaryColor,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Add"),
                  color: Palette.primaryColor,
                ),
              ])
            ],
          );
        });
  }

  createLocationAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Select a location"),
            content: LocationSelect(),
            actions: <Widget>[
              ButtonBar(children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                  color: Palette.primaryColor,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Add"),
                  color: Palette.primaryColor,
                ),
              ])
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(80.0), child: Header()),
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
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: GestureDetector(
                              child: Icon(
                                Icons.add_circle,
                                color: Palette.primaryColor,
                                size: 30.0,
                              ),
                              onTap: () {
                                createLanguageAlertDialog(context);
                              },
                            ))
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
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: GestureDetector(
                              child: Icon(
                                Icons.add_circle,
                                color: Palette.primaryColor,
                                size: 30.0,
                              ),
                              onTap: () {
                                createLanguageAlertDialog(context);
                              },
                            ))
                      ],
                    ))),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Languages You Teach",
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
                            child: LanguageTeaching()),
                        Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: GestureDetector(
                              child: Icon(
                                Icons.add_circle,
                                color: Palette.primaryColor,
                                size: 30.0,
                              ),
                              onTap: () {
                                createLanguageTeachAlertDialog(context);
                              },
                            ))
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
              ),
            ),
            Container(
              child: Card(
                color: Palette.tertiaryColor,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: LocationPreferred(),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: GestureDetector(
                        child: Icon(
                          Icons.add_circle,
                          color: Palette.primaryColor,
                          size: 30.0,
                        ),
                        onTap: () {
                          createLocationAlertDialog(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: RaisedButton(
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                onPressed: () {
                  Routes.sailor('/register/mentor/3');
                },
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
