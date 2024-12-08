import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/home/cubit/new_song_cubit.dart';
import 'package:spotify_app/presentation/home/view/widget/custom_circle_progress_indicator.dart';

import 'custom_play_list.dart';

class HomePlayList extends StatelessWidget {
  const HomePlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.playList,
                style: AppTextStyle.satoshi19Bold
                    .copyWith(color: AppColors.offWhite),
              ),
              Text(
                AppString.seeMote,
                style: AppTextStyle.satoshi17Regular
                    .copyWith(fontSize: 12, color: AppColors.darkOffWhit),
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          SizedBox(
            height: 216,
            child: BlocProvider(
              create: (context) => NewSongCubit()..getPlayListSong(),
              child: BlocBuilder<NewSongCubit, NewSongState>(
                builder: (context, state) {
                  return state is GetPlayListSuccessFul
                      ? ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemCount: state.songs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return customPlayList(
                                successState: state, index: index);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 14,
                            );
                          },
                        )
                      : CustomCircularProgressIndicator();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
