import 'package:flutter/material.dart';

import '../../../fuctions/navigation.dart';
import '../../get_start/view/get_start_view.dart';

void navigation({required BuildContext context}) {
  Future.delayed(const Duration(seconds: 3), () {
    // ignore: use_build_context_synchronously
    Navigation.pushReplaceme(context: context, navScreen: const GetStartView());
  });
}
