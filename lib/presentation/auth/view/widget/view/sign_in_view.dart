import 'package:flutter/material.dart';
import 'package:spotify_app/common/widget/text_span.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/auth/view/widget/body/sign_in_body.dart';
import 'package:spotify_app/presentation/auth/view/widget/register_view_app_bar.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33.0),
        child: ListView(
          children: [
            const RegisterViewAppBar(),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 22),
                child: Text(
                  AppString.signin,
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
              height: 587,
              child: SignInBody(),
            ),
            const SizedBox(height: 47),
          ],
        ),
      ),
    );
  }
}
