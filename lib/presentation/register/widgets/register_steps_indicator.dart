import 'package:flutter/material.dart';

class RegisterStepsIndicator extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const RegisterStepsIndicator({
    Key key, this.imagePath, this.height, this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
      child: Image(
        image: AssetImage(imagePath),
        height: height,
        width: width,
      ),
    );
  }
}