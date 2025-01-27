import 'package:flutter/material.dart';
import 'package:for_test/constants/app_text_style.dart';
import 'package:for_test/feature/home/presentation/cubit/get_songs_cubit.dart';

import '../../../../constants/colors.dart';

Widget profileContainerContent(
    {required GetSongsCubit songCubit,
    required int currentIndex,
    required GetSongsDetailsSuccessful songDetails}) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.network(
          songCubit.songCover[currentIndex],
          height: 56,
          width: 58,
        ),
      ),
      const SizedBox(
        width: 21,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songDetails.songsDetailsList[currentIndex].title,
              style: AppTextStyle.satoshiBold16,
            ),
            Text(
              songDetails.songsDetailsList[currentIndex].artist,
              style: AppTextStyle.satoshiRegualar12
                  .copyWith(color: AppColors.eE3E3E3),
            ),
          ],
        ),
      ),
      Expanded(
          child: Text(
        songDetails.songsDetailsList[currentIndex].duration.toString(),
        style: AppTextStyle.satoshiRegualar15,
      )),
      const Icon(
        Icons.more_horiz_sharp,
        color: AppColors.eE4E4E4,
      )
    ],
  );
}
