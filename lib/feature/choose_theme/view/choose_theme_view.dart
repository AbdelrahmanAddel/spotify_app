import 'package:flutter/material.dart';
import 'package:for_test/core/constants/assets.dart';

import '../../get_start/widget/get_start_background.dart';
import '../widget/choose_theme_body.dart';

class ChooseThemeView extends StatelessWidget {
  const ChooseThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          GetStartBackChooseThemeBackGround(
            imagePath: Assets.assetsImagesChooseThemeImage,
          ),
          ChooseThemeBody()
        ],
      ),
    );
  }
}
