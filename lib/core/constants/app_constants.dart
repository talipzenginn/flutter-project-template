import 'package:flutter/material.dart';

class AppConstants {
  static const LANG_ASSET_PATH = "asset/lang";

  static const BASE_URL = "https://reqres.in/";

  static const enLocale = Locale('en', 'US');
  static const trLocale = Locale('tr', 'TR');

  static const supportedLocales = [enLocale, trLocale];

  static const PASSWORD_REG_EXP =
      r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$";
  static const EMAIL_REG_EXP =
      r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$";
}
