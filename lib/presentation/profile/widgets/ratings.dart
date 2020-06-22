import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Ratings extends StatelessWidget {
  final double rating;
  final int numberOfReviews;

  const Ratings({
    Key key,
    @required this.numberOfReviews,
    @required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text("$rating / 5.0 ($numberOfReviews)",
          style: TextStyle(
              fontFamily: 'Martel Sans',
              height: 1.4,
              fontWeight: FontWeight.w700,
              color: Palette.primaryColor)),
    ]);
  }
}
