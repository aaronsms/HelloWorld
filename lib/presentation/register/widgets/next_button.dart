import 'package:flutter/material.dart';
import 'package:helloworld/presentation/common/palette.dart';

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.165,
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: () {},
        child: Ink(
          height: 40,
          width: 90,
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Palette.primaryColor
          ),
        ),
      ),
    );
  }
}
