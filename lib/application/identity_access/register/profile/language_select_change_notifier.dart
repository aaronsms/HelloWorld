import 'package:flutter/material.dart';

class LanguageSelectChangeNotifier extends ChangeNotifier {
  String _selectedLanguage = '';
  String _selectedProficiency = '';
  String _fee = '';

  String get selectedLanguage => _selectedLanguage;
  String get selectedProficiency => _selectedProficiency;
  String get fee => _fee;

  set selectedLanguage(String input) {
    _selectedLanguage = input;
    notifyListeners();
  }

  set fee(String input) {
    _fee = input;
    notifyListeners();
  }

  set selectedProficiency(String input) {
    _selectedProficiency = input;
    notifyListeners();
  }
}
