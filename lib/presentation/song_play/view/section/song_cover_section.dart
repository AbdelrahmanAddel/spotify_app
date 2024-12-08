import 'package:flutter/material.dart';

import '../../../home/cubit/new_song_cubit.dart';
import '../../cubit/song_play_cubit.dart';

Widget songCoverSection(
    {required GetSongsSuccessful getSongsSuccessful,
    required SongPlayCubit cubit,
    required int index}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Image.network(
      width: 335,
      height: 370,
      cubit.songCover[index],
      fit: BoxFit.cover,
    ),
  );
}
