part of 'new_song_cubit.dart';

@immutable
sealed class NewSongState {}

final class NewSongInitial extends NewSongState {}

final class LoadingToGetSongs extends NewSongState {}

final class GetSongsSuccessful extends NewSongState {
  final List<SongEntity> songs;

  GetSongsSuccessful({required this.songs});
}

final class FailerToGetSongs extends NewSongState {
  final String errorMessage;

  FailerToGetSongs({required this.errorMessage});
}

final class LoadingToGetPlayList extends NewSongState {}

final class GetPlayListSuccessFul extends NewSongState {
  final List<PlayListEntity> songs;
  GetPlayListSuccessFul({required this.songs});
}

final class FailerToGetPlayList extends NewSongState {
  final String errorMessage;

  FailerToGetPlayList({required this.errorMessage});
}
