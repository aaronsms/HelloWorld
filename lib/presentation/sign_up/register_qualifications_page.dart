import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';
import 'package:helloworld/presentation/sign_up/widgets/qualification.dart';
import 'package:helloworld/presentation/sign_up/widgets/qualification_addition.dart';

class RegisterQualificationsPage extends StatefulWidget {
  @override
  _RegisterQualificationsPageState createState() =>
      _RegisterQualificationsPageState();
}

class _RegisterQualificationsPageState
    extends State<RegisterQualificationsPage> {
  bool _firstChecked = false;
  bool _secondChecked = false;

  createQualificationAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Palette.tertiaryColor,
            content: QualificationAddition(),
            actions: <Widget>[
              ButtonBar(children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel", style: TextStyle(color: Colors.white)),
                  color: Palette.primaryColor,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
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
      appBar: Header(),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Image(
                  image: AssetImage('assets/images/mentor_step3.png'),
                  height: 100,
                  width: 300,
                )),
            Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Qualifications',
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
                            child: Qualification()),
                        Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: GestureDetector(
                              child: Icon(
                                Icons.add_circle,
                                color: Palette.primaryColor,
                                size: 30.0,
                              ),
                              onTap: () {
                                createQualificationAlertDialog(context);
                              },
                            ))
                      ],
                    ))),
            Container(
                padding: EdgeInsets.only(right: 10.0),
                child: RichText(
                    text: TextSpan(
                        text: "Example: ",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Martel Sans',
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                      TextSpan(
                          text: "Attained Grade “A” in GCSE O-Level Korean",
                          style: TextStyle(
                              color: Palette.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Martel Sans',
                              fontSize: 14.0)),
                    ]))),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: RichText(
                text: TextSpan(
                    text: "Note: ",
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Martel Sans',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "The higher the qualifications, the more likely you will be accepted as a mentor.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Martel Sans',
                              fontSize: 14.0)),
                    ]),
              ),
            ),
            CheckboxListTile(
              title: Container(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                      "I hereby declare that all of my documents and details are true and correct. I am aware that if the documents and details are found to be falsified and untrue at any point in time, I will not be accepted as a mentor/my account will be banned.",
                      style: TextStyle(
                          height: 1.3,
                          fontSize: 14,
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Martel Sans'))),
              checkColor: Colors.white,
              activeColor: Palette.primaryColor,
              value: _firstChecked,
              onChanged: (value) {
                setState(() {
                  _firstChecked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: Container(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                      "I am aware that if my qualifications or documents provided are found to be insufficient during the checking process, I will not be accepted as a mentor.",
                      style: TextStyle(
                          height: 1.3,
                          fontSize: 14,
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Martel Sans'))),
              checkColor: Colors.white,
              activeColor: Palette.primaryColor,
              value: _secondChecked,
              onChanged: (value) {
                setState(() {
                  _secondChecked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: RaisedButton(
                color: Palette.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                onPressed: () {
                  Routes.sailor(Routes.verifyEmail);
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
