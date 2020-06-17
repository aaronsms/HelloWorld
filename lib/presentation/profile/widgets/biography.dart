import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter/material.dart';

class Biography extends StatelessWidget {
  final String bio;

  const Biography({Key key, @required this.bio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(bio,
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontSize: 12,
            fontWeight: FontWeight.w700));
  }
}
