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
  Language(0, "English: Hello", "π¬π§"),
  Language(1, "Arabic: ΩΨ±Ψ­Ψ¨Ψ§Ω", "πΈπ¦"),
];

List<Language> langList = <Language>[
  Language(0, "English", "π¬π§"),
  Language(1, "Arabic", "πΈπ¦"),
];
