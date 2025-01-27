import 'package:dartz/dartz.dart';
import 'package:for_test/feature/home/data/data_source/firebase_song_details.dart';
import 'package:for_test/feature/home/data/model/song_details_model.dart';
import 'package:for_test/feature/home/domain/repositry/get_song_details.dart';
import 'package:for_test/service/service_locator.dart';

class SongDetailsRepoImplementation extends SongDetailsRepositry {
  @override
  Future<Either<List<SongDetailsModel>, String>> getSongDetails() {
    return sl<FirebaseSongDetails>().getSongDetails();
  }
}
