import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display.dart';

class MentorDisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Text(
        "Recommended Mentors For You",
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontSize: 22,
            fontWeight: FontWeight.w700),
      ),
      SizedBox(
          height: 500,
          child: SingleChildScrollView(
              child: Card(
            elevation: 0,
            color: Palette.backgroundColor,
            child: Column(
              children: <Widget>[
                MentorDisplay(),
                MentorDisplay(),
                MentorDisplay(),
                MentorDisplay()
              ],
            ),
          )))
    ]);
  }
}
