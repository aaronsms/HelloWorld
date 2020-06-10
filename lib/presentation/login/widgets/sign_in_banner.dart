import 'package:flutter/material.dart';
import 'package:helloworld/presentation/common/palette.dart';

class SignInBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 340,
          color: Palette.primaryColor,
          padding: const EdgeInsets.all(20.0),
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 5.0),
          child: Text(
            'Welcome',
            style: TextStyle(
                fontFamily: 'Gill Sans',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
        ),
      ],
    );
  }
}
