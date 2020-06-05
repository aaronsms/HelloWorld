import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MentorRenting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF29335C),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Color(0XFF29335C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                          child: Text('',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)))),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "RENT A MENTOR",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42.0),
                )),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/images/hirepreview.png'),
                )),
            new Spacer(),
            Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                  text: TextSpan(
                      text: 'The',
                      style: TextStyle(fontSize: 16.0),
                      children: <TextSpan>[
                    TextSpan(
                        text: ' mentor-renting feature ',
                        style: TextStyle(
                            color: Color(0XFFF3A712),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                    TextSpan(
                        text:
                            'provides a platform for students to seek professional guidance when needed. Mentors come with fixed charge rates.',
                        style: TextStyle(fontSize: 16.0))
                  ])),
            ),
            new Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: Image(
                        image: AssetImage('assets/images/previewbar1.png'))),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Color(0XFFF3A712),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                          child: Text('Next',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold))),
                    ))
              ],
            )
          ],
        ));
  }
}
