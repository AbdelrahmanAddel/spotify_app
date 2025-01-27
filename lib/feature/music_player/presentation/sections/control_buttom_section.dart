import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/common/widget/custom_circle_progress_indicator.dart';
import 'package:for_test/constants/assets.dart';

import '../../../../constants/colors.dart';
import '../../cubit/music_player_cubit.dart';

Widget controlButtomsSection(
    {required MusicPlayerCubit musicPlayerCubit,
    required int currentIndex,
    required MusicPlayerState musicPlaterState}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 64.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              musicPlayerCubit.isRepeating
                  ? musicPlayerCubit.stopRepeatingMusic()
                  : musicPlayerCubit.repeatMusic();
            },
            child: SvgPicture.asset(
              Assets.assetsImagesRepeate,
              color: musicPlayerCubit.isRepeating ? Colors.white : Colors.grey,
            )),
        SvgPicture.asset(Assets.assetsImagesPrevious),
        musicPlaterState is LoadingToPlayMusic ||
                musicPlaterState is LoadingToPuaseMusic
            ? customCircleProgressIndicator()
            : MaterialButton(
                onPressed: () {
                  musicPlayerCubit.isPlaying
                      ? musicPlayerCubit.puaseMusic()
                      : musicPlayerCubit.playMusic(index: currentIndex);
                },
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.greenButtom),
                  child: Icon(
                    musicPlayerCubit.isPlaying
                        ? Icons.pause_outlined
                        : Icons.play_arrow_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                )),
        SvgPicture.asset(Assets.assetsImagesNext),
        SvgPicture.asset(Assets.assetsImagesShuffle),
      ],
    ),
  );
}
