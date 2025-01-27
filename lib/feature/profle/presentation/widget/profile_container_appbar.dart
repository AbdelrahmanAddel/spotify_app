import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../common/widget/back_icon_widget.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';

Widget profileContainerAppBar({required BuildContext context}) {
  return Row(
    children: [
      SvgPicture.asset(Assets.assetsImagesProfileTopRight),
      BackIcon(
        onTap: () {
          Navigation.pop(context: context);
        },
        color: AppColors.e2C2B2B,
      ),
      const SizedBox(
        width: 112,
      ),
      Text(
        AppStrings.profile,
        style: AppTextStyle.satoshiBold16.copyWith(fontSize: 20),
      ),
      const Spacer(),
      const Icon(
        Icons.more_vert_sharp,
        size: 26,
        color: AppColors.a68C8C,
      )
    ],
  );
}
