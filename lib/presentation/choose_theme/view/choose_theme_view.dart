import 'package:flutter/material.dart';

import '../widget/them_background_image.dart';
import '../widget/theme_background_color.dart';
import '../widget/theme_view_content.dart';
import '../widget/theme_view_logo.dart';

class ChooseThemeView extends StatelessWidget {
  const ChooseThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ThemeBackgroundColor(),
        ThemeViewLogo(),
        ThemeBackgroundImage(),
        ThemeBackgrounfContent()
      ],
    );
  }
}
