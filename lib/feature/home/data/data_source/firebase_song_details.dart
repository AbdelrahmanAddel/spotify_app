import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:for_test/constants/firebase_strings.dart';
import 'package:for_test/feature/home/data/model/song_details_model.dart';

abstract class FirebaseSongDetails {
  Future<Either<List<SongDetailsModel>, String>> getSongDetails();
}

class FirebaseSongDetailsImple extends FirebaseSongDetails {
  @override
  Future<Either<List<SongDetailsModel>, String>> getSongDetails() async {
    List<SongDetailsModel> songs = [];
    try {
      await FirebaseFirestore.instance
          .collection(FirebaseStrings.songs)
          .get()
          .then((value) {
        for (var item in value.docs) {
          songs.add(SongDetailsModel.fromJson(item.data()));
        }
      });
      return left(songs);
    } on FirebaseException catch (e) {
      return right(e.message!);
    }
  }
}
