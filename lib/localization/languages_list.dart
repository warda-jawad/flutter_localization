class Language {
  final id;
  final name;
  final flag;

  Language(
    this.id,
    this.name,
    this.flag,
  );
}

List<Language> languagesList = <Language>[
  Language(0, "English: Hello", "🇬🇧"),
  Language(1, "Arabic: مرحباً", "🇸🇦"),
];

List<Language> langList = <Language>[
  Language(0, "English", "🇬🇧"),
  Language(1, "Arabic", "🇸🇦"),
];
