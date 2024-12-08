import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/data/data_source/song/firebase_songs.dart';
import 'package:spotify_app/core/domain/entity/song/song.dart';
import 'package:spotify_app/core/domain/repositry/song/song.dart';
import 'package:spotify_app/core/service_locator.dart';

class SongRepositiryImplement extends SongRepositiry {
  @override
  Future<Either<List<SongEntity>, String>> getNewsSong() async {
    return await sl<FirebaseSongs>().getSongs();
  }

  @override
  Future<Either> getLastSongs() {
    throw UnimplementedError();
  }
}
