import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';

class AddReview extends StatefulWidget {
  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  final _rating = TextEditingController();
  final _feedback = TextEditingController();
  bool _validateRating = false;
  bool _validateFeedback = false;

  @override
  void dispose() {
    _rating.dispose();
    _feedback.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Palette.primaryColor,
              )),
          Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Align(
                  alignment: Alignment.center,
                  child: Text("Submit Review",
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontFamily: 'Martel Sans',
                          fontSize: 26,
                          fontWeight: FontWeight.w900)))),
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Palette.backgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("RATING",
                                style: TextStyle(
                                    color: Palette.primaryColor,
                                    fontFamily: 'Martel Sans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900))),
                        SizedBox(
                            width: 120,
                            height: 50,
                            child: Theme(
                                data: ThemeData(
                                    primaryColor: Palette.primaryColor,
                                    primaryColorDark: Palette.primaryColor),
                                child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: _rating,
                                    style: TextStyle(
                                        color: Palette.primaryColor,
                                        fontFamily: 'Martel Sans',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    decoration: InputDecoration(
                                        errorText: _validateRating
                                            ? 'Invalid value!'
                                            : null,
                                        errorStyle:
                                            TextStyle(color: Colors.red),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Palette.primaryColor)),
                                        suffixText: "/ 5.0",
                                        suffixStyle: TextStyle(
                                            color: Palette.primaryColor,
                                            fontFamily: 'Martel Sans',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500))))),
                        const SizedBox(height: 50),
                        Text("FEEDBACK",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontFamily: 'Martel Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w900)),
                        SizedBox(
                            width: 350,
                            height: 125,
                            child: Theme(
                                data: ThemeData(
                                    primaryColor: Palette.primaryColor,
                                    primaryColorDark: Palette.primaryColor),
                                child: TextField(
                                    maxLines: null,
                                    maxLength: 200,
                                    controller: _feedback,
                                    style: TextStyle(
                                        color: Palette.primaryColor,
                                        fontFamily: 'Martel Sans',
                                        fontSize: 14,
                                        height: 1.2,
                                        fontWeight: FontWeight.w700),
                                    decoration: InputDecoration(
                                        errorText: _validateFeedback
                                            ? 'Feedback cannot be left empty!'
                                            : null,
                                        errorStyle:
                                            TextStyle(color: Colors.red),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Palette.primaryColor)),
                                        hintText:
                                            "e.g. Mentor is patient and understanding.",
                                        hintStyle: TextStyle(
                                            height: 1.5,
                                            fontStyle: FontStyle.italic,
                                            color: Palette.primaryColor
                                                .withOpacity(0.6),
                                            fontFamily: 'Martel Sans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500))))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        _rating.text.isEmpty ||
                                                double.parse(_rating.text) > 5
                                            ? _validateRating = true
                                            : _validateRating = false;
                                        _feedback.text.isEmpty
                                            ? _validateFeedback = true
                                            : _validateFeedback = false;
                                        if (!_validateFeedback) {
                                          Routes.sailor(Routes.homepage); //TODO
                                        }
                                      });
                                    },
                                    color: Palette.primaryColor,
                                    child: Text("Submit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Martel Sans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900)))))
                      ],
                    ),
                  ))),
        ]));
  }
}
