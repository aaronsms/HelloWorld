import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class NameTag extends StatelessWidget {
  final String name;
  final String type;

  const NameTag({
    Key key,
    @required this.name,
    @required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(name,
            style: TextStyle(
                color: Palette.primaryColor,
                fontFamily: 'Martel Sans',
                fontSize: 20,
                height: 2.5,
                fontWeight: FontWeight.w900)),
        Container(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 25,
              decoration: BoxDecoration(
                  color: Palette.secondaryColor,
                  border: Border.all(color: Palette.secondaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Text(type,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Martel Sans',
                      fontSize: 8,
                      height: 2,
                      fontWeight: FontWeight.w500)),
            ))
      ],
    );
  }
}
