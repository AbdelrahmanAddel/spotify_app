import 'package:flutter/material.dart';

import '../../../../common/widget/back_icon.dart';
import '../../../../core/util/app_string.dart';
import '../../../../core/util/app_text_style.dart';

Widget songPlayAppBarSection({Function()? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      BackIcon(
        onTap: onTap,
        top: 0,
        left: 0,
      ),
      Text(
        AppString.nowPlaying,
        style: AppTextStyle.satoshi19Bold,
      ),
      Icon(Icons.more_vert)
    ],
  );
}
