import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/domain/entity/song/song.dart';

abstract class SongRepositiry{

Future<Either<List<SongEntity>,String>>getNewsSong();
Future<Either>getLastSongs();
}