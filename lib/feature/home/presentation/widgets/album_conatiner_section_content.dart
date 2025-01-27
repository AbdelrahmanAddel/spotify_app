import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/constants/assets.dart';

Widget albumContainerSectionContent() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.newAlbum,
              style: AppTextStyle.satoshiBold15,
            ),
            Text(
              AppStrings.happierThan,
              style: AppTextStyle.satoshiBold15.copyWith(fontSize: 24),
            ),
            Text(AppStrings.billieEl,
                style: AppTextStyle.satoshiBold15.copyWith(fontSize: 18)),
          ],
        ),
      ),
      Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset(
            Assets.assetsImagesAlbumUnion,
          ))
    ],
  );
}
