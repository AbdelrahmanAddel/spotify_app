import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/common/widget/back_icon_widget.dart';

import '../../../../constants/assets.dart';

Widget appBarSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const BackIcon(),
      const SizedBox(
        width: 86,
      ),
      SvgPicture.asset(
        Assets.assetsImagesSpotifyLogo,
        width: 108,
        height: 33,
        fit: BoxFit.contain,
      )
    ],
  );
}
