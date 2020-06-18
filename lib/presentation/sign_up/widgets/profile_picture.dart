import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_event.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_state.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureAvatar extends StatelessWidget {
  final ImagePicker imagePicker = ImagePicker();

  Future _getImage(BuildContext context) async {
    final RegisterProfileBloc registerProfileBloc =
        context.bloc<RegisterProfileBloc>();
    final PickedFile imagePicked =
        await imagePicker.getImage(source: ImageSource.gallery);
    if (imagePicked != null) {
      final File imageCropped = await ImageCropper.cropImage(
        sourcePath: imagePicked.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressQuality: 100,
        maxWidth: 700,
        maxHeight: 700,
        compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(
          toolbarColor: Palette.primaryColor,
          toolbarTitle: 'Crop your display picture',
          toolbarWidgetColor: Colors.white,
          statusBarColor: Palette.primaryColor,
          backgroundColor: Colors.white,
        ),
      );
      registerProfileBloc.add(RegisterProfileEvent.imageSet(file: imageCropped));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _getImage(context),
      child: BlocBuilder<RegisterProfileBloc, RegisterProfileState>(
        builder: (context, state) {
          final image = state.profilePicture;
          return Container(
            width: 100.0,
            height: 100.0,
            padding: const EdgeInsets.all(3.0),
            //border width
            decoration: BoxDecoration(
              color: Palette.primaryColor, //border color
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.white,
              radius: 50.0,
              child: image == null
                  ? Icon(Icons.add_a_photo, color: Palette.primaryColor)
                  : image.value.fold(
                      (l) =>
                          Icon(Icons.add_a_photo, color: Palette.primaryColor),
                      (value) => ClipOval(child: Image.file(value))),
            ),
          );
        },
      ),
    );
  }
}
