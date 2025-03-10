import 'package:flutter/material.dart';

import '../../../../core/common/widget/custom_text_span.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/constants/colors.dart';

Widget signInTextsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        AppStrings.signIn,
        style: AppTextStyle.satoshiBold22.copyWith(fontSize: 30),
      ),
      const SizedBox(
        height: 22,
      ),
      customTextSpan(
        firstText: AppStrings.ifYouNeed,
        secondText: AppStrings.clickHere,
        firstTextStyle:
            AppTextStyle.satoshiRegualar12.copyWith(color: AppColors.e1E1E1),
        secondTextStlyle:
            AppTextStyle.satoshiRegualar12.copyWith(color: AppColors.g38B432),
      )
    ],
  );
}
