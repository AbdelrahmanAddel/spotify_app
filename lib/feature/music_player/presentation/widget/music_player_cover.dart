import 'package:flutter/material.dart';

import '../../cubit/music_player_cubit.dart';

Widget musicPlayerCover({required MusicPlayerCubit cubit, required int index}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
    child: SizedBox(
      width: 335,
      height: 370,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
          cubit.songCover[index],
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
