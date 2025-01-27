import 'package:flutter/material.dart';
import 'package:for_test/core/constants/assets.dart';
import '../widget/get_start_background.dart';
import '../widget/get_start_body.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GetStartBackChooseThemeBackGround(
          imagePath: Assets.assetsImagesGetStartedImage,
        ),
        GetStartBody()
      ],
    );
  }
}
