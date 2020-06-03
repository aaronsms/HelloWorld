import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BookingSystem extends StatelessWidget {
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
                      color: Color(0XFFF3A712),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                          child: Text('Prev',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)))),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "BOOKING SYSTEM",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42.0),
                )),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/images/bookingpreview.png'),
                )),
            new Spacer(),
            Container(
              padding: EdgeInsets.all(15.0),
              child: RichText(
                  text: TextSpan(
                      text: '\nThe',
                      style: TextStyle(fontSize: 16.0),
                      children: <TextSpan>[
                    TextSpan(
                        text: ' booking system ',
                        style: TextStyle(
                            color: Color(0XFFF3A712),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                    TextSpan(
                        text:
                            'provides a platform for students and/or mentors to arrange meet-ups at the convenience of both parties to verbally practice the new language. ',
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
                        image: AssetImage('assets/images/previewbar2.png'))),
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
