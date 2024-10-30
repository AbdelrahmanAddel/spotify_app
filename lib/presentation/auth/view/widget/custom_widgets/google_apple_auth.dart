import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/util/assets.dart';

class GoogleAppleAuthen extends StatelessWidget {
  const GoogleAppleAuthen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.assetsImagesGooglevector),
        const SizedBox(width: 58),
        SvgPicture.asset(Assets.assetsImagesApplevector),
      ],
    );
  }
}



