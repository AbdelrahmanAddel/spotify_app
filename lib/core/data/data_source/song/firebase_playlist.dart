import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/data/model/song/play_list_modl.dart';
import 'package:spotify_app/core/util/app_string.dart';

abstract class FirebasePlaylist {
  Future<Either<List<PlayListModel>, String>> getPlayList();
}

class FirebasePlaylistImplenmtaion extends FirebasePlaylist {
  List<PlayListModel> playListSongs = [];
  @override
  Future<Either<List<PlayListModel>, String>> getPlayList() async {
    try {
      await FirebaseFirestore.instance
          .collection(AppString.songs)
          .get()
          .then((songs) {
        for (var song in songs.docs) {
          playListSongs.add(PlayListModel.fromJson(song.data()));
        }
      });
      return Left(playListSongs);
    } on FirebaseException catch (e) {
      return Right(e.message!);
    }
  }
}
