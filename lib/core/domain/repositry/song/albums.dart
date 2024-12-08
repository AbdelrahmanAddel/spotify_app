import 'package:dartz/dartz.dart';

import '../../entity/song/play_list_entity.dart';

abstract class PlayListRepositry {
  Future<Either<List<PlayListEntity>, String>> getPlayList();
}
