import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/distance_filter.dart';
import 'package:helloworld/presentation/homepage/widgets/language_filter.dart';

class SearchProfileFilters extends StatefulWidget {
  @override
  _SearchProfileFiltersState createState() => _SearchProfileFiltersState();
}

class _SearchProfileFiltersState extends State<SearchProfileFilters> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Palette.secondaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 15),
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
          LanguageFilter(),
          new Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 15, top: 30),
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
          LanguageFilter(),
          new Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 15, top: 30),
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
          LanguageFilter(),
          new Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 15, top: 30),
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
              padding: EdgeInsets.only(bottom: 15),
              child: Row(children: <Widget>[DistanceFilter()])),
          new Divider(
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
