import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:helloworld/application/identity_access/register/account/register_account_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/register/register_qualifications_page.dart';
import 'package:helloworld/presentation/register/widgets/header.dart';
import 'package:helloworld/presentation/register/widgets/language_selection_dashboard.dart';
import 'package:helloworld/presentation/register/widgets/profile_picture_avatar.dart';
import 'package:helloworld/presentation/register/widgets/biography.dart';
import 'package:helloworld/presentation/register/widgets/locationpreferred.dart';
import 'package:helloworld/presentation/register/widgets/register_steps_indicator.dart';

class RegisterProfileMentorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const RegisterStepsIndicator(
              imagePath: 'assets/images/mentor_step2.png',
              height: 100,
              width: 300,
            ),
            ProfilePictureAvatar(),
            const SizedBox(height: 10.0),
            const Text(
              'Add your display picture',
              style: TextStyle(
                  fontFamily: 'Martel Sans', fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10.0),
            Biography(),
            const SizedBox(height: 10.0),

            // Languages Learning title
            Text(
              'Languages Learning',
              style: Theme.of(context).textTheme.headline1,
            ),
            const LanguageSelectionDashboard(isLearn: true),
            const SizedBox(height: 20.0),

            // Languages You Speak title
            Text(
              "Languages You Speak",
              style: Theme.of(context).textTheme.headline1,
            ),
            const LanguageSelectionDashboard(isSpeak: true),
            const SizedBox(height: 20.0),

            // Languages You Teach title
            Text(
              "Languages You Teach",
              style: Theme.of(context).textTheme.headline1,
            ),
            const LanguageSelectionDashboard(isTeach: true),
            const SizedBox(height: 20.0),

            // Preferred locations
            Text(
              "Preferred Locations",
              style: Theme.of(context).textTheme.headline1,
            ),
            Card(
              color: Palette.tertiaryColor,
              child: Column(
                children: <Widget>[
                  LocationPreferred(),
                  GestureDetector(
                    onTap: () async {
                      final LocationResult result = await showLocationPicker(
                        context,
			'',
                        automaticallyAnimateToCurrentLocation: true,
//                      mapStylePath: 'assets/mapStyle.json',
                        myLocationButtonEnabled: true,
                        layersButtonEnabled: true,
//                      resultCardAlignment: Alignment.bottomCenter,
                      );
                      print("result = $result");

                      context.bloc<RegisterProfileBloc>().add(
                          RegisterProfileEvent.locationAdded(location: result));
                    },
                    child: Icon(
                      Icons.add_circle,
                      color: Palette.primaryColor,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            RaisedButton(
              color: Palette.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              onPressed: () {
                final bloc1 = context.bloc<RegisterAccountBloc>();
                final bloc2 = context.bloc<RegisterProfileBloc>();
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return BlocProvider.value(
                    value: bloc1,
                    child: BlocProvider.value(
                      value: bloc2,
                      child: RegisterQualificationsPage(),
                    ),
                  );
                }));
              },
              child: Text(
                'Done',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
