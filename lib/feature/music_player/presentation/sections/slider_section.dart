// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:for_test/core/constants/colors.dart';
import 'package:for_test/feature/music_player/cubit/music_player_cubit.dart';

import '../../../../core/constants/app_text_style.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MusicPlayerCubit, MusicPlayerState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<MusicPlayerCubit>(context);
        return Column(
          children: [
            Slider(
                activeColor: AppColors.bB7B7B7,
                min: 0,
                max: cubit.duration.inSeconds.toDouble(),
                value: cubit.postion.inSeconds.toDouble(),
                onChanged: (value) {
                  cubit.audioseek(Duration(seconds: value.toInt()));
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cubit.formatDuration(cubit.postion),
                    style: AppTextStyle.satoshiBold14
                        .copyWith(color: AppColors.e8787, fontSize: 12),
                  ),
                  Text(
                    cubit.formatDuration(cubit.duration),
                    style: AppTextStyle.satoshiBold14
                        .copyWith(color: AppColors.e8787, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
