import 'package:flutter/material.dart';
import 'package:spotify_app/common/widget/text_span.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/auth/view/widget/body/sign_up_body.dart';

import '../register_view_app_bar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33.0),
        child: ListView(
          children: [
            Center(child: const RegisterViewAppBar()),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 15),
                child: Text(
                  AppString.register,
                  style: AppTextStyle.satoshi30Bold,
                ),
              ),
            ),
            const Center(
              child: CustomTextSpan(
                firstText: AppString.ifAny,
                secondText: AppString.clickHere,
                secondTextColor: AppColors.clickHereColor,
                firstTextColor: AppColors.ifAnyColor,
              ),
            ),
            const SizedBox(height: 38),
            SizedBox(
              height: 600,
              child: SignUpBody(),
            ),
            
          ],
        ),
      ),
    );
  }
}
