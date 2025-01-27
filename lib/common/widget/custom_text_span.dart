import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget customTextSpan(
    {required String firstText,
    required String secondText,
    TextStyle? firstTextStyle,
    TextStyle? secondTextStlyle,
    Function()? onTap}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(text: firstText, style: firstTextStyle),
    TextSpan(
        recognizer: TapGestureRecognizer()..onTap = onTap,
        text: secondText,
        style: secondTextStlyle)
  ]));
}
