import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_event.dart';

import 'package:helloworld/presentation/core/palette.dart';

class LanguageSelection extends StatelessWidget {
  final bool isTeach;
  final bool isLearn;
  final bool isSpeak;

  const LanguageSelection(
      {Key key,
      this.isTeach = false,
      this.isLearn = false,
      this.isSpeak = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      color: Palette.secondaryColor,
      child: BlocBuilder<RegisterProfileBloc, RegisterProfileState>(
        builder: (context, state) {
          final list = isTeach
              ? state.teachingLanguages
              : isLearn ? state.learningLanguages : state.speakingLanguages;
          return Column(
            children: <Widget>[
              ...list.map((tuple) {
                return ListTile(
                  leading: Icon(Icons.language, color: Palette.primaryColor),
                  trailing: IconButton(
                    icon: Icon(Icons.delete_sweep),
                    color: Palette.primaryColor,
                    onPressed: () {
                      if (isTeach) {
                        context.bloc<RegisterProfileBloc>().add(
                              RegisterProfileEvent.teachingLanguageDeleted(
                                language: tuple.value1.toString(),
                              ),
                            );
                      }
                      if (isLearn) {
                        context.bloc<RegisterProfileBloc>().add(
                              RegisterProfileEvent.learningLanguageDeleted(
                                language: tuple.value1.toString(),
                              ),
                            );
                      }
                      if (isSpeak) {
                        context.bloc<RegisterProfileBloc>().add(
                              RegisterProfileEvent.speakingLanguageDeleted(
                                language: tuple.value1.toString(),
                              ),
                            );
                      }
                    },
                  ),
                  title: Text(
                    tuple.value1.toString(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(tuple.value2.toString(),
                          style: TextStyle(
                              color: Palette.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Martel Sans')),
                      if (isTeach)
                        Text("\$10/hr",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Martel Sans'))
                    ],
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}
