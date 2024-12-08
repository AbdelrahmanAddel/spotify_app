// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:spotify_app/core/domain/entity/song/play_list_entity.dart';

import '../../../domain/repositry/song/albums.dart';
import '../../data_source/song/firebase_playlist.dart';

class PlayListRepositryImplementation extends PlayListRepositry {
  FirebasePlaylistImplenmtaion firebasePlaylistImplenmtaion;
  PlayListRepositryImplementation({
    required this.firebasePlaylistImplenmtaion,
  });
  @override
  Future<Either<List<PlayListEntity>, String>> getPlayList() {
    return firebasePlaylistImplenmtaion.getPlayList();

  }
}
