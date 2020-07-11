import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class User extends StatelessWidget {
  final String name;
  final int id;
  final String imageUrl;

  const User({
    Key key,
    @required this.name,
    @required this.id,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Palette.primaryColor,
              width: 3.0,
            ),
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        ),
        Text(name,
            style: TextStyle(
              color: Palette.primaryColor,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ))
      ],
    );
  }
}
