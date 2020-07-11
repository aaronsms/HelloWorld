import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Charge extends StatelessWidget {
  final double charge;
  final String language;

  const Charge({
    Key key,
    @required this.language,
    @required this.charge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text("  \u2022" + "  $language Lessons: \$$charge SGD/HR",
          style: TextStyle(
              fontFamily: 'Martel Sans',
              height: 1.4,
              fontWeight: FontWeight.w700,
              color: Palette.primaryColor))
    ]);
  }
}
