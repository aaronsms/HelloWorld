import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/add_review.dart';

class MentorStatus extends StatelessWidget {
  final String status;

  const MentorStatus({
    Key key,
    @required this.status,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10),
        child: status != "ACCEPTED"
            ? RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                onPressed: null,
                disabledColor: status == "PENDING"
                    ? Palette.primaryColor
                    : const Color(0xFFD06161),
                child: Text(status,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Martel Sans',
                        fontWeight: FontWeight.w900)))
            : ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: null,
                      disabledColor: const Color(0xFF4DB97F),
                      child: Text(status,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w900))),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Palette.secondaryColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddReview()),
                        );
                      },
                      child: Text("REVIEW",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w900))),
                ],
              ));
  }
}
