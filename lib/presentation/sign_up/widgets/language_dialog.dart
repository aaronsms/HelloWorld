import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class LanguageDialog extends StatelessWidget {
  static final List<String> languages =
      Language.values.map((e) => e.toString().split('.').last).toList();
  final List<DropdownMenuItem> items =
      languages.map((str) {
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
    return SearchableDropdown.single(
      items: items,
      value: '',
      onChanged: (String value) {
        context.read<ValueNotifier<String>>().value = value;
      },
      hint: const Padding(
        padding: EdgeInsets.only(bottom: 4.0),
        child: Text(
          "Language",
          style: TextStyle(
            color: Palette.disabledColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      searchHint: const Text(
        "Please select a language",
        style: TextStyle(
          color: Palette.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      isExpanded: true,
      selectedValueWidgetFn: (String value) => Container(
        alignment: Alignment.centerLeft,
        child: Text(
          value,
          style: const TextStyle(
              color: Palette.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 17),
        ),
      ),
      underline: Container(
        height: 1.0,
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Palette.primaryColor, width: 2.0))),
      ),
    );
  }
}
