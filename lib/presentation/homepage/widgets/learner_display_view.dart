import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display.dart';

class LearnerDisplayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Text(
        "Recommended Learners For You",
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
                LearnerDisplay(),
                LearnerDisplay(),
                LearnerDisplay(),
                LearnerDisplay()
              ],
            ),
          )))
    ]);
  }
}
