import 'package:flutter/material.dart';

import '../../cubit/new_song_cubit.dart';
import 'custom_play_icon.dart';

class CustomAlbumListViewContent extends StatelessWidget {
  const CustomAlbumListViewContent(
      {super.key,
      required this.cubit,
      required this.index,
      required this.state});

  final NewSongCubit cubit;
  final int index;
  final GetSongsSuccessful state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 155,
          height: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: NetworkImage(
                    cubit.songCover[index],
                  ),
                  fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.bottomRight,
            child: customPlayIcon(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          state.songs[index].title,
        ),
        Text(
          state.songs[index].artist,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
