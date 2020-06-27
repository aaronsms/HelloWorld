import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/review_bottom.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {},
                    color: Palette.primaryColor,
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Reviews",
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontFamily: 'Martel Sans',
                          fontSize: 26,
                          fontWeight: FontWeight.w900),
                    ),
                  ]),
              Expanded(child: ReviewBottom())
            ]));
  }
}
