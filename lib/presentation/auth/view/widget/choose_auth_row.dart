import 'package:flutter/material.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';

import 'package:spotify_app/presentation/auth/view/widget/view/sign_in_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_up_view.dart';
import 'package:spotify_app/presentation/intro/view/widget/custom_matrial_buttom.dart';

class ChooseAuthRow extends StatelessWidget {
  const ChooseAuthRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomMatrialButtom(color: AppColors.green, width: 147, height: 73, text: AppString.register,onPressed: () {
          Navigation.push(context: context, screen: const SignUpView());
        },),
        const SizedBox(width: 30,),
        CustomMatrialButtom(color: AppColors.brown, width: 147, height: 73, text: AppString.signin,onPressed: () {
        Navigation.push(context: context, screen: const SignInView());
        },),
      ],
    );
  }
}