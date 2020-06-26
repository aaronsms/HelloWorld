import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ReviewForm extends StatelessWidget {
  final String review;
  final String name;
  final double rating;

  const ReviewForm({
    Key key,
    @required this.name,
    @required this.review,
    @required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
              onTap: () {/** NAVIGATES TO USER'S PROFILE */},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Palette.primaryColor,
                    width: 3.0,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              title: Row(children: <Widget>[
                Text(name,
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Martel Sans')),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: FlatButton(
                      disabledColor: Palette.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: null,
                      child: Text("$rating / 5.0",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w900)),
                    ))
              ]),
              subtitle: Text(review,
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: Palette.primaryColor,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w600)))
        ]));
  }
}
