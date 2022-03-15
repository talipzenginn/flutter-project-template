import 'package:easy_localization/easy_localization.dart';
import '../../core/constants/app_constants.dart';

extension StringExtensions on String {
  String get locale => this.tr();
  String? get isValidEmail => contains(RegExp(AppConstants.EMAIL_REG_EXP))
      ? null
      : 'Email does not valid';
  String? get isValidPassword => contains(RegExp(AppConstants.PASSWORD_REG_EXP))
      ? null
      : 'Password does not valid';
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
}
