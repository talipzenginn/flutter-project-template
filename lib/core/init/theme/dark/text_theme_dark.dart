class TextThemeDark {
  static TextThemeDark? _instance;
  static TextThemeDark? get instance {
    _instance ??= TextThemeDark._init();
    return _instance;
  }

  TextThemeDark._init();
}
