import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../common/widget/custom_button.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_text_style.dart';
import '../../../constants/assets.dart';
import '../../choose_auth/view/choose_auth_view.dart';
import 'choose_theme_icons.dart';

class ChooseThemeBody extends StatelessWidget {
  const ChooseThemeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(children: [
          SvgPicture.asset(Assets.assetsImagesSpotifyLogo),
          const SizedBox(height: 340),
          const Text(
            AppStrings.chooseMode,
            style: AppTextStyle.satoshiBold22,
          ),
          const SizedBox(
            height: 32,
          ),
          const ChooseThemeIcons(),
          const Spacer(),
          customButton(
            width: 329,
            height: 92,
            child: const Text(
              AppStrings.continuee,
              style: AppTextStyle.satoshiBold22,
            ),
            onTap: () {
              Navigation.pushReplaceme(
                  context: context, navScreen: const ChooseAuthView());
            },
          ),
          const SizedBox(
            height: 69,
          )
        ]),
      ),
    );
  }
}
