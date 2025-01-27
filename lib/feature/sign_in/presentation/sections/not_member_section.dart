import 'package:flutter/material.dart';
import 'package:for_test/feature/register/presentation/view/register_view.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../common/widget/custom_text_span.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/colors.dart';

Widget notAMemberSection({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customTextSpan(
          firstText: AppStrings.notAMember,
          firstTextStyle:
              AppTextStyle.satoshiBold14.copyWith(color: AppColors.dBDBDB),
          secondText: AppStrings.registerNow,
          secondTextStlyle:
              AppTextStyle.satoshiBold14.copyWith(color: AppColors.e288CE9),
          onTap: () => Navigation.pushReplaceme(
              context: context, navScreen: const RegisterView())),
    ],
  );
}
