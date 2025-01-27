import 'package:flutter/material.dart';

class Navigation {
  static pushReplaceme(
      {required BuildContext context, required Widget navScreen}) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (builder) => navScreen));
  }

  static push({required BuildContext context, required Widget pushScreen}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => pushScreen));
  }

  static pop({required BuildContext context}) {
    Navigator.pop(context);
  }
}
