import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/account/register_account_bloc.dart';
import 'package:helloworld/application/identity_access/register/account/register_account_event.dart';
import 'package:helloworld/presentation/core/palette.dart';

class NextButtonToProfile extends StatelessWidget {
  const NextButtonToProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        color: Palette.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        onPressed: () {
          context
              .bloc<RegisterAccountBloc>()
              .add(RegisterAccountEvent.nextClicked(context));
        },
        child: Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
