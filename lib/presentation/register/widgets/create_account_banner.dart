import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class CreateAccountBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.165,
      color: Palette.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 15.0),
            child: Text(
              'Create Account',
              style: TextStyle(
                fontFamily: "Gill Sans",
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 15.0),
            child: Container(
              width: 160.0,
              child: Image(image: AssetImage('assets/images/logo.png')),
            ),
          ),
        ],
      ),
    );
  }
}
