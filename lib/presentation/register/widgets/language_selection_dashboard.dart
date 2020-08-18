import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/register/widgets/proficiency_dialog.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/bloc.dart';
import 'package:helloworld/application/identity_access/register/profile/register_profile_event.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';

import 'language_dialog.dart';
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
    final languageStr = await buildDialog(
      context,
      initialValue: '',
      dialog: () => LanguageDialog(),
      title: 'Please select your language',
    );

    if (languageStr != null && languageStr != '') {
      final proficiencyStr = await buildDialog(
        context,
        title: 'Please select the proficiency',
        dialog: () => ProficiencyDialog(),
        initialValue: LanguageProficiency.A1,
      );
      if (proficiencyStr != null) {
        if (isTeach) {
          await buildRateDialog(
            context,
            title: 'Please select a rate',
            initialValue: 0,
          );
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
}

Future<String> buildDialog(BuildContext context,
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

Future<int> buildRateDialog(BuildContext context,
    {@required String title, @required int initialValue}) async {
  final int result = await showDialog(
    context: context,
    builder: (context) {
      return ListenableProvider(
        create: (_) => ValueNotifier<int>(initialValue),
        child: Builder(
          builder: (cont) => AlertDialog(
            title: Text(title),
            content: Container(
              height: 80,
              width: 50,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontFamily: 'Martel Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: Palette.primaryColor),
                  ),
                  prefixText: "\$",
                  suffixText: "/hr",
                  suffixStyle: TextStyle(
                      color: Palette.primaryColor,
                      fontFamily: 'Martel Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(cont.read<ValueNotifier<int>>().value);
                },
                color: Palette.primaryColor,
                child: const Text("Select"),
              )
            ],
          ),
        ),
      );
    },
  );
  return result;
}

class RateDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: [],
      value: 0,
      onChanged: (value) {
        context.read<ValueNotifier<int>>().value = value as int;
      },
      onSaved: (value) {
        context.read<ValueNotifier<int>>().value = value as int;
      },
      style: const TextStyle(
          color: Palette.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Palette.primaryColor, width: 2.0),
        ),
      ),
    );
  }
}
