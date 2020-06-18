import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ProficiencyDialog extends StatelessWidget {
  static final List<String> proficiency = LanguageProficiency.proficiencies;
  final List<DropdownMenuItem> items = proficiency.map((str) {
    return DropdownMenuItem(
        value: str,
        child: Text(str,
            style: const TextStyle(
                color: Palette.primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600)));
  }).toList();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: items,
      value: LanguageProficiency.A1,
      onChanged: (value) {
        context.read<ValueNotifier<String>>().value = value as String;
      },
      onSaved: (value) {
        context.read<ValueNotifier<String>>().value = value as String;
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
