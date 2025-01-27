import 'package:flutter/material.dart';
import 'package:for_test/feature/sign_in/presentation/view/sign_in_view.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../../common/widget/custom_text_span.dart';
import '../../../../../constants/app_strings.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../../constants/colors.dart';

Widget doYouHaveAnAccount({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customTextSpan(
          firstText: AppStrings.doYouHave,
          firstTextStyle:
              AppTextStyle.satoshiBold14.copyWith(color: AppColors.dBDBDB),
          secondText: AppStrings.signIn,
          secondTextStlyle:
              AppTextStyle.satoshiBold14.copyWith(color: AppColors.e288CE9),
          onTap: () => Navigation.pushReplaceme(
              context: context, navScreen: const SignInView())),
    ],
  );
}
