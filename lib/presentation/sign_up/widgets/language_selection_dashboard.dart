import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_event.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/presentation/sign_up/widgets/proficiency_dialog.dart';
import 'package:helloworld/presentation/sign_up/widgets/language_dialog.dart';

import 'language_selection.dart';

class LanguageSelectionDashboard extends StatelessWidget {
  final bool isLearn;
  final bool isSpeak;
  final bool isTeach;

  const LanguageSelectionDashboard(
      {Key key,
      this.isLearn = false,
      this.isSpeak = false,
      this.isTeach = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Palette.tertiaryColor,
        child: Column(
          children: <Widget>[
            LanguageSelection(
              isLearn: isLearn,
              isSpeak: isSpeak,
              isTeach: isTeach,
            ),
            GestureDetector(
              onTap: () => addLanguage(
                context: context,
                isLearn: isLearn,
                isSpeak: isSpeak,
                isTeach: isTeach,
              ),
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
    );
  }

  Future<void> addLanguage(
      {BuildContext context,
      bool isTeach = false,
      bool isSpeak = false,
      bool isLearn = false}) async {
    final languageStr = await _buildDialog(
      context,
      initialValue: '',
      dialog: () => LanguageDialog(),
      title: 'Please select your language',
    );

    print(languageStr);
    if (languageStr != null) {
      final proficiencyStr = await _buildDialog(
        context,
        title: 'Please select the proficiency',
        dialog: () => ProficiencyDialog(),
        initialValue: LanguageProficiency.A1,
      );
      print(proficiencyStr);
      if (proficiencyStr != null) {
        print('$languageStr $proficiencyStr');
        if (isTeach) {
          context.bloc<RegisterProfileBloc>().add(
              RegisterProfileEvent.teachingLanguageAdded(
                  language: languageStr, proficiency: proficiencyStr));
        }
        if (isLearn) {
          context.bloc<RegisterProfileBloc>().add(
              RegisterProfileEvent.learningLanguageAdded(
                  language: languageStr, proficiency: proficiencyStr));
        }
        if (isSpeak) {
          context.bloc<RegisterProfileBloc>().add(
              RegisterProfileEvent.speakingLanguageAdded(
                  language: languageStr, proficiency: proficiencyStr));
        }
      }
    }
  }

  Future<String> _buildDialog(BuildContext context,
      {@required String title,
      @required Widget Function() dialog,
      @required String initialValue}) async {
    final String result = await showDialog(
      context: context,
      builder: (context) {
        return ListenableProvider(
          create: (_) => ValueNotifier<String>(initialValue),
          child: AlertDialog(
            title: Text(title),
            content: Container(
              height: 80,
              width: double.infinity,
              child: dialog(),
            ),
            actions: <Widget>[
              SelectRaisedButton(),
            ],
          ),
        );
      },
    );
    return result;
  }
}

class SelectRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).pop(context.read<ValueNotifier<String>>().value);
      },
      color: Palette.primaryColor,
      child: const Text("Select"),
    );
  }
}
