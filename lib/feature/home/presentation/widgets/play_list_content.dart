import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_test/core/constants/app_text_style.dart';
import 'package:for_test/core/constants/colors.dart';

import '../../../../core/constants/assets.dart';
import '../cubit/get_songs_cubit.dart';

Widget playListContent(
    {required GetSongsDetailsSuccessful songDetails,
    required int currentIndex}) {
  return Row(
    children: [
      Container(
        transform: Matrix4.translationValues(6, 8, 0),
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.playIconBackGorung,
        ),
        child: Center(
          child: SvgPicture.asset(Assets.assetsImagesPlay),
        ),
      ),
      const SizedBox(
        width: 23,
      ),
      Expanded(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songDetails.songsDetailsList[currentIndex].title,
              style: AppTextStyle.satoshiBold16,
            ),
            const SizedBox(height: 5),
            Text(
              songDetails.songsDetailsList[currentIndex].artist,
              style: AppTextStyle.satoshiRegualar12
                  .copyWith(color: AppColors.d6d6),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 102,
      ),
      Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              songDetails.songsDetailsList[currentIndex].duration.toString(),
              style: AppTextStyle.satoshiRegualar15,
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Expanded(flex: 1, child: SvgPicture.asset(Assets.assetsImagesHeart1))
    ],
  );
}
