class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager? get instance {
    _instance ??= LanguageManager._init();
    return _instance;
  }

  LanguageManager._init();
}
