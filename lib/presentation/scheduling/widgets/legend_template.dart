import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LegendTemplate extends StatelessWidget {
  final String legend;
  final Color color;

  const LegendTemplate({Key key, @required this.legend, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
          color: color,
          child: Icon(
            Icons.crop_square,
            color: color,
            size: 16,
          )),
      Text(" $legend",
          style: TextStyle(
              color: Palette.primaryColor,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w800,
              fontSize: 12))
    ]);
  }
}
