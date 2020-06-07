import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:async';

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File _image;
  // final _rating = TextEditingController();
  // final _picker = ImagePicker();

  Future _getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _getImage,
        child: Container(
            child: new CircleAvatar(
              child: _image == null
                  ? Icon(
                      Icons.add_a_photo,
                      color: Palette.primaryColor,
                    )
                  : Image.file(_image),
              foregroundColor: Colors.white,
              backgroundColor: Colors.white,
            ),
            width: 100.0,
            height: 100.0,
            padding: const EdgeInsets.all(3.0), //border width
            decoration: new BoxDecoration(
              color: Palette.primaryColor, //border color
              shape: BoxShape.circle,
            )));
  }
}
