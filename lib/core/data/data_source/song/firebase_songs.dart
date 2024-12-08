import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/data/model/song/song_model.dart';
import 'package:spotify_app/core/domain/entity/song/song.dart';
import 'package:spotify_app/core/util/app_string.dart';

abstract class FirebaseSongs {
  Future<Either<List<SongEntity>, String>> getSongs();
}

class FirebaseSongsImplement extends FirebaseSongs {
  List<SongEntity> songsList = [];
  @override
  Future<Either<List<SongEntity>, String>> getSongs() async {
    try {
      await FirebaseFirestore.instance
          .collection(AppString.songs)
          .orderBy(AppString.releaseDate, descending: true)
          .limit(3)
          .get()
          .then((songs) {
        for (var song in songs.docs) {
          songsList.add(SongModel.fromJson(song.data()));
        }
      });
      return Left(songsList);
    } on FirebaseException catch (e) {
      return Right(e.message.toString());
    }
  }
}
