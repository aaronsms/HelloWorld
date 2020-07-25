import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/distance_filter.dart';
import 'package:helloworld/presentation/homepage/widgets/language_filter.dart';

class SearchProfileFilters extends StatelessWidget {
  final bool isLearnerOrMentor;

  const SearchProfileFilters({Key key, this.isLearnerOrMentor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Palette.secondaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (!isLearnerOrMentor)
            Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Languages Teaching",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 0.1,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900),
                )),
          if (!isLearnerOrMentor)
            LanguageFilter(isLearn: false, isSpeak: false, isTeach: true),
          if (!isLearnerOrMentor)
            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 30),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Languages Learning",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 0.1,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900),
              )),
          LanguageFilter(isLearn: true, isSpeak: false, isTeach: false),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 30),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Also Speaks",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 0.1,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900),
              )),
          LanguageFilter(isLearn: false, isSpeak: true, isTeach: false),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 30),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Distance Range",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 0.1,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900),
              )),
          Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(children: <Widget>[DistanceFilter()])),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}
