import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProficiencyBar extends StatelessWidget {
  final double rating;

  const ProficiencyBar({
    Key key,
    @required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: RatingBar(
          initialRating: rating,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemSize: 15,
          itemPadding: EdgeInsets.symmetric(horizontal: 0.1),
          itemBuilder: (context, _) => Icon(
            Icons.stop,
            color: Palette.quaternaryColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ));
  }
}
