// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/core/constants/app_text_style.dart';
import 'package:for_test/core/constants/assets.dart';

import '../../../home/presentation/cubit/get_songs_cubit.dart';

Widget songsDetails(
    {required GetSongsDetailsSuccessful songDetails, required currentIndex}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songDetails.songsDetailsList[currentIndex].title,
              style: AppTextStyle.satoshiBold22,
            ),
            Text(
              songDetails.songsDetailsList[currentIndex].artist,
              style: AppTextStyle.satoshiRegular17.copyWith(fontSize: 20),
            ),
          ],
        ),
        SvgPicture.asset(Assets.assetsImagesHeart1)
      ],
    ),
  );
}
