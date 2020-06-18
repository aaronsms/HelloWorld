import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String image;

  const ProfilePicture({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 105,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Palette.primaryColor,
          width: 3.0,
        ),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(''),
      ),
    );
  }
}
