import 'package:spotify_app/core/domain/entity/song/song.dart';
import 'package:spotify_app/core/util/app_string.dart';

class SongModel extends SongEntity {
  SongModel({
    required super.artist,
    required super.duration,
    required super.releasedate,
    required super.title,
  });
  factory SongModel.fromJson(Map<String, dynamic> jsonData) {
    return SongModel(
        artist: jsonData[FireBaseString.artist],
        duration: jsonData[FireBaseString.duration],
        releasedate: jsonData[FireBaseString.releaseDate],
        title: jsonData[FireBaseString.title]);
  }
}

extension SongEntityX1 on SongModel {
  SongEntity toEntity() {
    return SongEntity(
        artist: artist,
        duration: duration,
        releasedate: releasedate,
        title: title);
  }
}
