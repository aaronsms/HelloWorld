import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LanguageSpeak extends StatefulWidget {
  @override
  _LanguageSpeakState createState() => _LanguageSpeakState();
}

class _LanguageSpeakState extends State<LanguageSpeak> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Palette.secondaryColor,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Icon(Icons.language, color: Palette.primaryColor),
            title: Text('English',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Martel Sans')),
            subtitle: Text('C6: Proficient',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Martel Sans')),
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.language, color: Palette.primaryColor),
            title: Text('Mandarin (Chinese)',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Martel Sans')),
            subtitle: Text('C6: Proficient',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Martel Sans')),
          ),
        ]));
  }
}
