import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/theme/dark/app_theme_dark.dart';
import '../../../../core/init/theme/light/app_theme_light.dart';
import '../theme/red/app_theme_red.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme =
      SchedulerBinding.instance!.window.platformBrightness == Brightness.dark
          ? AppThemeDark.instance!.theme
          : AppThemeLight.instance!.theme;
  ThemeData get currentTheme => _currentTheme;

  void changeTheme(AppThemes appTheme) {
    if (appTheme == AppThemes.LIGHT) {
      _currentTheme = AppThemeLight.instance!.theme;
    } else if (appTheme == AppThemes.DARK) {
      _currentTheme = AppThemeDark.instance!.theme;
    } else if (appTheme == AppThemes.RED) {
      _currentTheme = AppThemeRed.instance!.theme;
    }
    notifyListeners();
  }
}
