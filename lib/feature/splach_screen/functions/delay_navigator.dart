import 'package:flutter/material.dart';

import '../../../fuctions/navigation.dart';

void navigation({required BuildContext context, required Widget screen}) {
  Future.delayed(const Duration(seconds: 3), () {
    Navigation.pushReplaceme(context: context, navScreen: screen);
  });
}
