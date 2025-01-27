import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_test/feature/profle/presentation/view/profile.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';

Widget homeAppBarSection({required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(
        Icons.search,
        color: AppColors.cFCFCF,
        size: 26,
      ),
      SvgPicture.asset(
        Assets.assetsImagesSpotifyLogo,
        width: 108,
        height: 33,
      ),
      GestureDetector(
        onTap: () {
          Navigation.push(context: context, pushScreen: ProfileView());
        },
        child: const Icon(
          Icons.person,
          color: AppColors.cFCFCF,
          size: 26,
        ),
      )
    ],
  );
}
