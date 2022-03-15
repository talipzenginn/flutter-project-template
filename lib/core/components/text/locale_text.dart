import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../../core/extension/string_extension.dart';

class LocaleText extends StatelessWidget {
  const LocaleText(
    this.text, {
    Key? key,
    this.style = const TextStyle(),
    this.textAlign,
  }) : super(key: key);

  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text!.locale,
      style: style,
      textAlign: textAlign,
    );
  }
}
