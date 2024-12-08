import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/home/view/widget/custom_play_icon.dart';

import '../../cubit/new_song_cubit.dart';

Widget customPlayList(
    {required GetPlayListSuccessFul successState, required int index}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      customPlayIcon(x: 0, y: 0, z: 0),
      SizedBox(
        width: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(successState.songs[index].title),
          SizedBox(
            height: 5,
          ),
          Text(
            successState.songs[index].artist,
            textAlign: TextAlign.start,
          ),
        ],
      ),
      Spacer(),
      Align(
          alignment: Alignment.center,
          child: Text(successState.songs[index].duration.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffD6D6D6),
              ))),
      SizedBox(
        width: 48,
      ),
      Icon(
        Icons.favorite,
        color: Color(0xff565656),
      )
    ],
  );
}
