import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/choose_theme/view/choose_theme_view.dart';
import '../../../../common/navigation.dart';
import '../../../../core/util/assets.dart';
import 'custom_matrial_buttom.dart';

class GetStartContent extends StatelessWidget {
  const GetStartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 37.0),
            child: Center(
              child: Image.asset(Assets.assetsImagesSpotifylogo),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 21.0),
            child: Text(
              AppString.enjoy,
              style: AppTextStyle.satoshi25Regular.copyWith(
                color: AppColors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Text(
            AppString.lorem,
            style: AppTextStyle.satoshi17Regular.copyWith(
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 37.0, bottom: 69),
            child: CustomMatrialButtom(
              color: AppColors.green,
              text: AppString.getStart,
              width: 329,
              height: 92,
              onPressed: () {
                Navigation.push(context: context, screen: const ChooseThemeView());
              },
            ),
          ),
        ],
      ),
    );
  }
}
