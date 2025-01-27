import 'package:dartz/dartz.dart';
import 'package:for_test/feature/home/data/model/song_details_model.dart';

abstract class SongDetailsRepositry {
  Future<Either<List<SongDetailsModel>, String>> getSongDetails();
}
