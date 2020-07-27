import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/bloc.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LocationPreferred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterProfileBloc, RegisterProfileState>(
      builder: (context, state) {
        final listOfLocations =
            context.bloc<RegisterProfileBloc>().state.preferredLocations;

        return SizedBox(
          width: double.infinity,
          child: Card(
            margin: const EdgeInsets.all(10.0),
            color: Palette.secondaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ...listOfLocations.map((e) {
                  return ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Palette.primaryColor,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_sweep),
                      color: Palette.primaryColor,
                      onPressed: () {
                        context.bloc<RegisterProfileBloc>().add(
                            RegisterProfileEvent.locationDeleted(
                                latLng: e.value1));
                      },
                    ),
                    title: Text(
                      e.value2.getOrElse(''),
                      style: TextStyle(
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Martel Sans',
                        fontSize: 14
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        );
      },
    );
  }
}
