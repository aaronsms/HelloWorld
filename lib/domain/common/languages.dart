enum Language {
  // to be added
  English,
  Mandarin,
  Spanish,
  Italian,
  Portuguese,
  German,
  French,
  Japanese,
  Korean,
  Malay,
}

String languageToString(Language language) {
  return language
      .toString()
      .split('.')
      .last;
}

Language parseLanguage(String str) {
  final Map<String, Language> map = {};
  const List<Language> languages = Language.values;
  Language.values.map(languageToString).toList().asMap().forEach((key, value) {
    map.putIfAbsent(value, () => languages[key]);
  });
  return map[str];
}