import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      title: Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text('Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Martel Sans',
                  fontSize: 28,
                  fontWeight: FontWeight.w900))),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: const Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
