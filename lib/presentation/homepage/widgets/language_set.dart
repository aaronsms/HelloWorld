import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/proficiency_bar.dart';

class LanguageSet extends StatelessWidget {
  final String proficiency;
  final String language;

  const LanguageSet({
    Key key,
    @required this.proficiency,
    @required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      RichText(
          text: TextSpan(
              text: "  $language",
              style: TextStyle(
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w600,
                  height: 1.4),
              children: <TextSpan>[
            TextSpan(
                text: "  $proficiency",
                style: TextStyle(
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    color: Palette.quaternaryColor))
          ])),
      // ProficiencyBar(rating: proficiency),
    ]);
  }
}
