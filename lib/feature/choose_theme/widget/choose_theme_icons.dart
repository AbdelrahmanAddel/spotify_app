import 'package:flutter/material.dart';
import 'package:for_test/core/constants/app_strings.dart';
import 'package:for_test/core/constants/app_text_style.dart';
import 'package:for_test/core/constants/assets.dart';

import '../widget/theme_icon.dart';

class ChooseThemeIcons extends StatelessWidget {
  const ChooseThemeIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Column(children: [
        chooseThemeIcon(iconImage: Assets.assetsImagesMoon),
        Text(
          AppStrings.darkMode,
          style: AppTextStyle.satoshiBold22.copyWith(fontSize: 17),
        )
      ]),
      Column(children: [
        chooseThemeIcon(iconImage: Assets.assetsImagesSun),
        Text(
          AppStrings.lightMode,
          style: AppTextStyle.satoshiBold22.copyWith(fontSize: 17),
        )
      ]),
    ]);
  }
}
