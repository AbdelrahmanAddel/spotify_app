import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/common/widget/custom_button.dart';
import 'package:for_test/constants/app_strings.dart';
import 'package:for_test/constants/app_text_style.dart';
import 'package:for_test/constants/assets.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../choose_theme/view/choose_theme_view.dart';

class GetStartBody extends StatelessWidget {
  const GetStartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset(Assets.assetsImagesSpotifyLogo),
            const SizedBox(
              height: 403,
            ),
            const Text(
              AppStrings.enjoy,
              style: AppTextStyle.satoshiBold25,
            ),
            const SizedBox(
              height: 21,
            ),
            const Text(
              AppStrings.lorem,
              style: AppTextStyle.satoshiRegular17,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            customButton(
                onTap: () {
                  Navigation.pushReplaceme(
                      context: context, navScreen: const ChooseThemeView());
                },
                width: 329,
                height: 92,
                child: const Text(
                  AppStrings.getStarted,
                  style: AppTextStyle.satoshiBold22,
                )),
            const SizedBox(
              height: 69,
            ),
          ],
        ),
      ),
    );
  }
}
