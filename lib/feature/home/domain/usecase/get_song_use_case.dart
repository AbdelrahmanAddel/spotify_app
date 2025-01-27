import 'package:dartz/dartz.dart';
import 'package:for_test/feature/home/domain/repositry/get_song_details.dart';
import 'package:for_test/service/service_locator.dart';

import '../../data/model/song_details_model.dart';

class GetSongUseCase {
  Future<Either<List<SongDetailsModel>, String>> call() {
    return sl<SongDetailsRepositry>().getSongDetails();
  }
}
