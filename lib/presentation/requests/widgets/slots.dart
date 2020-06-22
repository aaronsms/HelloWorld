import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Slots extends StatelessWidget {
  final String slot;

  const Slots({Key key, @required this.slot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      RichText(
          text: TextSpan(
        text: " \u2022" + "  $slot",
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w700,
            height: 1.4),
      ))
    ]);
  }
}
