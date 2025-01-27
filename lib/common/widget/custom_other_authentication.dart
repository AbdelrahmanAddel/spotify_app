import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/assets.dart';

Widget otherAuthentication() {
  return Row(
    children: [
      const Spacer(),
      SvgPicture.asset(Assets.assetsImagesGoole),
      const SizedBox(
        width: 58,
      ),
      SvgPicture.asset(Assets.assetsImagesApple),
      const Spacer(),
    ],
  );
}
