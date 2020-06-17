import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/proficiency_bar.dart';

class LanguageSet extends StatelessWidget {
  final double proficiency;
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
        text: " \u2022" + "  $language",
        style: TextStyle(
            color: Palette.primaryColor,
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w700,
            height: 1.4),
      )),
      Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: ProficiencyBar(rating: proficiency)),
    ]);
  }
}
