import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LoginBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          color: Palette.primaryColor,
          padding: const EdgeInsets.all(20.0),
          child: const Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Welcome',
            style: TextStyle(
                fontFamily: 'Martel Sans',
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0),
          ),
        ),
      ],
    );
  }
}
