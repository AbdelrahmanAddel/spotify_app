import 'package:flutter/material.dart';

import '../../../../common/widget/back_icon.dart';
import '../../../../core/util/assets.dart';

class RegisterViewAppBar extends StatelessWidget {
  const RegisterViewAppBar({super.key, this.backIcon});
  final bool ? backIcon;
   

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        backIcon==true?const BackIcon(top: 0, left: 0):const SizedBox(),
         const SizedBox(width: 115),
        SizedBox(
          width: 108,
          height: 103,
          child: Image.asset(Assets.assetsImagesSpotifylogo),
        ),
      ],
    );
  }
}
