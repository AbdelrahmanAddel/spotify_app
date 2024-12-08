// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:spotify_app/core/domain/entity/song/play_list_entity.dart';

import '../../repositry/song/albums.dart';

class GetPlaylistUserCase {
  PlayListRepositry playListRepositry;
  GetPlaylistUserCase({
    required this.playListRepositry,
  });

  Future<Either<List<PlayListEntity>, String>> call() {
    return playListRepositry.getPlayList();
  }
}
