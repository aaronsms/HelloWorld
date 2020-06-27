import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/review_form.dart';

class ReviewBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: SingleChildScrollView(
            child: Card(
                elevation: 0,
                color: Palette.backgroundColor,
                child: Column(children: <Widget>[
                  const ReviewForm(
                      name: "Sample Name 1",
                      review:
                          "Mentor is patient and understanding. Will definitely book another session soon!",
                      rating: 5.0),
                  const ReviewForm(
                      name: "Sample Name 2",
                      review:
                          "Mentor is patient and understanding. Will definitely book another session soon!",
                      rating: 5.0),
                  const ReviewForm(
                      name: "Sample Name 3",
                      review:
                          "Mentor is patient and understanding. Will definitely book another session soon!",
                      rating: 5.0),
                  const ReviewForm(
                      name: "Sample Name 4",
                      review:
                          "Mentor is patient and understanding. Will definitely book another session soon!",
                      rating: 5.0),
                  const ReviewForm(
                      name: "Sample Name 5",
                      review:
                          "Mentor is patient and understanding. Will definitely book another session soon!",
                      rating: 5.0),
                ]))));
  }
}
