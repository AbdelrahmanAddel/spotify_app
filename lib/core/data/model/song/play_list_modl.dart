import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/core/domain/entity/song/play_list_entity.dart';
import 'package:spotify_app/core/util/app_string.dart';

class PlayListModel extends PlayListEntity {
  final Timestamp relaseDate;
  PlayListModel(
      {required this.relaseDate,
      required super.artist,
      required super.title,
      required super.duration});
  factory PlayListModel.fromJson(Map<String, dynamic> jsonData) {
    return PlayListModel(
        relaseDate: jsonData[FireBaseString.releaseDate],
        artist: jsonData[FireBaseString.artist],
        title: jsonData[FireBaseString.title],
        duration: jsonData[FireBaseString.duration]);
  }
}
