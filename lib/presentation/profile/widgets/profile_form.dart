import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/profile/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/widgets/location.dart';
import 'package:helloworld/presentation/profile/widgets/portfolio.dart';
import 'package:helloworld/presentation/profile/widgets/charge.dart';

class ProfileForm extends StatelessWidget {
  final String title;
  final List<LanguageSet> languages;
  final List<Location> locations;
  final List<Portfolio> qualifications;
  final List<Charge> charges;

  const ProfileForm(
      {Key key,
      @required this.title,
      this.languages,
      this.locations,
      this.qualifications,
      this.charges})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Martel Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Palette.secondaryColor),
                  )),
              Container(
                  padding: const EdgeInsets.only(bottom: 10, left: 10),
                  child: Column(
                    children:
                        qualifications ?? languages ?? locations ?? charges,
                  )),
            ],
          ),
        ));
  }
}
