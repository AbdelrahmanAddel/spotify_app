import 'package:flutter/material.dart';
import 'package:for_test/core/common/widget/custom_button.dart';
import 'package:for_test/core/constants/app_strings.dart';
import 'package:for_test/core/constants/app_text_style.dart';
import 'package:for_test/feature/register/presentation/view/register_view.dart';
import 'package:for_test/feature/sign_in/presentation/view/sign_in_view.dart';
import 'package:for_test/fuctions/navigation.dart';

class ChooseAuthBottons extends StatelessWidget {
  const ChooseAuthBottons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customButton(
          onTap: () {
            Navigation.pushReplaceme(
                context: context, navScreen: const RegisterView());
          },
          width: 147,
          height: 73,
          child: Text(
            AppStrings.register,
            style: AppTextStyle.satoshiBold22.copyWith(fontSize: 19),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            Navigation.pushReplaceme(
                context: context, navScreen: const SignInView());
          },
          child: Text(
            AppStrings.signIn,
            style: AppTextStyle.satoshiBold22.copyWith(fontSize: 19),
          ),
        )
      ],
    );
  }
}
