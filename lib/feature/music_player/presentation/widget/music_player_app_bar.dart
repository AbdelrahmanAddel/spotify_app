import 'package:flutter/material.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../common/widget/back_icon_widget.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/colors.dart';
import '../../cubit/music_player_cubit.dart';

Widget musicPlayerAppBar(
    {required MusicPlayerCubit musicPlayerCubit,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigation.pop(context: context);
              if (musicPlayerCubit.isPlaying) {
                musicPlayerCubit.closeMusic();
              }
            },
            child: const BackIcon()),
        Text(
          AppStrings.nowPlaying,
          style: AppTextStyle.satoshiBold16.copyWith(fontSize: 20),
        ),
        const Icon(
          Icons.more_vert_sharp,
          color: AppColors.dDD,
          size: 27,
        )
      ],
    ),
  );
}
