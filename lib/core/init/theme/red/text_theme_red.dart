import 'package:flutter/material.dart';
import 'color_scheme_red.dart';

class TextThemeRed {
  static TextThemeRed? _instance;
  static TextThemeRed? get instance {
    _instance ??= TextThemeRed._init();
    return _instance;
  }

  TextThemeRed._init();

  final TextStyle headline1 = const TextStyle(
      color: ColorSchemeRed.secondary,
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5);
  final TextStyle headline2 = const TextStyle(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5);
  final TextStyle headline3 = const TextStyle(
      color: ColorSchemeRed.secondary, fontSize: 48, fontWeight: FontWeight.w400);
  final TextStyle headline4 = const TextStyle(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25);
  final TextStyle headline5 =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w400);
  final TextStyle headline6 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15);
}
