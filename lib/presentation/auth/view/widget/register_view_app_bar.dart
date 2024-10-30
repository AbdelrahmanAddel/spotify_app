import 'package:flutter/material.dart';

import '../../../../common/widget/back_icon.dart';
import '../../../../core/util/assets.dart';

class RegisterViewAppBar extends StatelessWidget {
  const RegisterViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackIcon(top: 0, left: 0),
        const SizedBox(width: 86),
        SizedBox(
          width: 108,
          height: 103,
          child: Image.asset(Assets.assetsImagesSpotifylogo),
        ),
      ],
    );
  }
}
