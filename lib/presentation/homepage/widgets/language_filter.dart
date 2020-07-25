import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class LanguageFilter extends StatelessWidget {
  final bool isLearn;
  final bool isSpeak;
  final bool isTeach;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<Map<String, dynamic>> languages = Language.values
      .map((Language e) => {'display': languageToString(e), 'value': e})
      .toList();

  LanguageFilter({
    Key key,
    this.isLearn,
    this.isSpeak,
    this.isTeach,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final speakInitial = context
            .watch<ValueNotifier<Set<SpeakingLanguage>>>()
            .value;
    final learnInitial = context
            .watch<ValueNotifier<Set<LearningLanguage>>>()
            .value;
    final teachInitial = context
            .watch<ValueNotifier<Set<TeachingLanguage>>>()
            .value;

    final List<Language> initialList = isSpeak
        ? speakInitial.map((e) => e.getOrCrash()).toList()
        : isLearn
          ? learnInitial.map((e) => e.getOrCrash()).toList()
          : teachInitial.map((e) => e.getOrCrash()).toList();

    return Form(
        key: formKey,
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: MultiSelectFormField(
              autovalidate: false,
              titleText: 'Select Languages',
              hintText: '',
              validator: (value) {
                if (value == null || value.length == 0) {
                  return 'Please select one or more options';
                }
                return null;
              },
              initialValue: initialList,
              dataSource: languages,
              textField: 'display',
              valueField: 'value',
              okButtonLabel: 'OK',
              cancelButtonLabel: 'CANCEL',
              onSaved: (value) {
                if (value == null) return;

                if (isSpeak) {
                  context
                      .read<ValueNotifier<Set<SpeakingLanguage>>>()
                      .value =
                      (value as List)
                          .cast<Language>()
                          .map((e) => SpeakingLanguage(e))
                          .toSet()
                          .cast<SpeakingLanguage>();
                }

                if (isLearn) {
                  context
                      .read<ValueNotifier<Set<LearningLanguage>>>()
                      .value =
                      (value as List)
                          .cast<Language>()
                          .map((e) => LearningLanguage(e))
                          .toSet()
                          .cast<LearningLanguage>();
                }

                if (isTeach) {
                  context
                      .read<ValueNotifier<Set<TeachingLanguage>>>()
                      .value =
                      (value as List)
                          .cast<Language>()
                          .map((e) => TeachingLanguage(e))
                          .toSet()
                          .cast<TeachingLanguage>();
                }
              },
            ),
          ),
        ]));
  }
}
