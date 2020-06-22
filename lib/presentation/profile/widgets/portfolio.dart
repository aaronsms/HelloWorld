import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Portfolio extends StatelessWidget {
  final String qualification;

  const Portfolio({
    Key key,
    @required this.qualification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      RichText(
          text: TextSpan(
        text: " \u2022" + "  $qualification",
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w700,
            height: 1.4),
      )),
    ]);
  }
}
