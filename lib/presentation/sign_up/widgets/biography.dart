import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_event.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        style: TextStyle(
            color: Palette.primaryColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Martel Sans'),
        onChanged: (bioStr) {
          context
              .bloc<RegisterProfileBloc>()
              .add(RegisterProfileEvent.bioChanged(bio: bioStr));
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Palette.tertiaryColor),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          filled: true,
          fillColor: Palette.tertiaryColor,
          contentPadding: const EdgeInsets.only(left: 10),
          hintText: "Bio (Optional)",
          hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
