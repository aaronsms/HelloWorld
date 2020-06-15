import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProficiencyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: RatingBar(
          initialRating: 2,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemSize: 15,
          itemPadding: EdgeInsets.symmetric(horizontal: 0.1),
          itemBuilder: (context, _) => Icon(
            Icons.maximize,
            color: Palette.quaternaryColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ));
  }
}
