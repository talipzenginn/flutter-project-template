import 'package:flutter/material.dart';
import '../../../../core/init/theme/red/text_theme_red.dart';
import '../../../../core/init/theme/app_theme.dart';
import 'color_scheme_red.dart';

class AppThemeRed extends AppTheme {
  static AppThemeRed? _instance;
  static AppThemeRed? get instance {
    _instance ??= AppThemeRed._init();
    return _instance;
  }

  AppThemeRed._init();

  ThemeData get theme => ThemeData.light().copyWith(
        colorScheme: _appColorScheme(),
        textTheme: _appTextTheme(),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(
                  backgroundColor: ColorSchemeRed.background,
                ),
      );

  TextTheme _appTextTheme() {
    return TextTheme(
      headline1: TextThemeRed.instance!.headline1,
      headline2: TextThemeRed.instance!.headline2,
      headline3: TextThemeRed.instance!.headline3,
      headline4: TextThemeRed.instance!.headline4,
      headline5: TextThemeRed.instance!.headline5,
      headline6: TextThemeRed.instance!.headline6,
    );
  }

  ColorScheme _appColorScheme() {
    return const ColorScheme(
      primary: ColorSchemeRed.primary,
      secondary: ColorSchemeRed.secondary,
      surface: ColorSchemeRed.surface,
      background: ColorSchemeRed.background,
      error: ColorSchemeRed.error,
      onPrimary: ColorSchemeRed.onPrimary,
      onSecondary: ColorSchemeRed.onSecondary,
      onSurface: ColorSchemeRed.onSurface,
      onBackground: ColorSchemeRed.onBackground,
      onError: ColorSchemeRed.onError,
      brightness: ColorSchemeRed.brightness,
    );
  }
}
