import 'package:flutter/material.dart';
import 'package:helloworld/presentation/profile/widgets/ratings.dart';
import 'package:helloworld/presentation/core/palette.dart';

class RatingsForm extends StatelessWidget {
  final String title;
  final Ratings rating;

  const RatingsForm({
    Key key,
    @required this.title,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Martel Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Palette.secondaryColor),
                    )),
                rating,
                Container(
                    padding: const EdgeInsets.only(bottom: 3, left: 100),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Palette.secondaryColor,
                      ),
                      onPressed: () {},
                    ))
              ]),
            ],
          ),
        ));
  }
}
