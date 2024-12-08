import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/song_play/cubit/song_play_cubit.dart';

import '../../../../core/util/app_text_style.dart';
import '../../../home/cubit/new_song_cubit.dart';

Widget songDetailsSection(
    {required GetSongsSuccessful getSongsSuccessful,
    required int index,
    required SongPlayCubit cubit}) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getSongsSuccessful.songs[index].title,
            style: AppTextStyle.satoshi19Bold,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            getSongsSuccessful.songs[index].artist,
            style: AppTextStyle.satoshi25Regular.copyWith(fontSize: 20),
          ),
        ],
      ),
      Spacer(),
      MaterialButton(
          onPressed: () {},
          child: Icon(
            Icons.favorite_border,
            color: Color(0xff6C6C6C),
            size: 26,
          ))
    ],
  );
}
