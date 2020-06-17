// import 'package:flutter/gestures.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatelessWidget {
  final String location;

  const Location({
    Key key,
    @required this.location,
  }) : super(key: key);

  void _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      RichText(
          text: TextSpan(
              text: " \u2022" + "  ",
              style: TextStyle(
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Martel Sans',
                  height: 1.4),
              children: <TextSpan>[
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () => _launchURL,
              text: location,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Martel Sans',
                  height: 1.4),
            )
          ]))
    ]);
  }
}
