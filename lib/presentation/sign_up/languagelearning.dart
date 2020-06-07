import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LanguageLearning extends StatefulWidget {
  @override
  _LanguageLearningState createState() => _LanguageLearningState();
}

class _LanguageLearningState extends State<LanguageLearning> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Palette.secondaryColor,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Icon(Icons.language, color: Palette.primaryColor),
            title: Text('Spanish',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Martel Sans')),
            subtitle: Text('A1: Beginner',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Martel Sans')),
          ),
        ]));
  }
}
