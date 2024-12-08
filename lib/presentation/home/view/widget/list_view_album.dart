import 'package:flutter/material.dart';

import '../../../song_play/view/song_play_view.dart';
import '../../cubit/new_song_cubit.dart';
import 'custom_list_view_album.dart';

class AlbumListView extends StatelessWidget {
  const AlbumListView(
      {super.key, required this.cubit, required this.getSongsSuccessfulState});

  final NewSongCubit cubit;
  final GetSongsSuccessful getSongsSuccessfulState;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GestureDetector(
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: getSongsSuccessfulState.songs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => SongPlayView(
                          index: index,
                          getSongsSuccessful: getSongsSuccessfulState))),
              child: CustomAlbumListViewContent(
                cubit: cubit,
                index: index,
                state: getSongsSuccessfulState,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 14,
            );
          },
        ),
      ),
    );
  }
}
