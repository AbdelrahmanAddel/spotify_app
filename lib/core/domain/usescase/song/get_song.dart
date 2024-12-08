import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/domain/repositry/song/song.dart';
import 'package:spotify_app/core/service_locator.dart';

class  GetSongUseCase {
  Future<Either> call() {
    return sl<SongRepositiry>().getNewsSong();

  }

}