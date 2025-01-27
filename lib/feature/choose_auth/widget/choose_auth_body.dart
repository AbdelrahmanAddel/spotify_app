import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/core/constants/app_strings.dart';
import 'package:for_test/core/constants/app_text_style.dart';
import 'package:for_test/core/constants/assets.dart';

import '../../../core/constants/colors.dart';
import 'choose_auth_bottons.dart';

class ChooseAuthBody extends StatelessWidget {
  const ChooseAuthBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const SizedBox(
              height: 175,
            ),
            SvgPicture.asset(Assets.assetsImagesSpotifyLogo),
            const SizedBox(
              height: 55,
            ),
            Text(
              AppStrings.enjoy,
              style:
                  AppTextStyle.satoshiBold26.copyWith(color: AppColors.f6F6F6),
            ),
            const SizedBox(
              height: 21,
            ),
            const Text(
              AppStrings.spotifyIs,
              style: AppTextStyle.satoshiRegular17,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const ChooseAuthBottons()
          ],
        ),
      ),
    );
  }
}
