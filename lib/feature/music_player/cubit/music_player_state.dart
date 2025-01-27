part of 'music_player_cubit.dart';

@immutable
sealed class MusicPlayerState {}

final class MusicPlayerInitial extends MusicPlayerState {}

final class LoadingToPlayMusic extends MusicPlayerState {}

final class PlayMusicSuccess extends MusicPlayerState {}

final class FailerToPlayMusic extends MusicPlayerState {
  final String errorMessage;

  FailerToPlayMusic({required this.errorMessage});
}

final class LoadingToPuaseMusic extends MusicPlayerState {}

final class PuaseMusicSuccess extends MusicPlayerState {}

final class FailerToPuaseMusic extends MusicPlayerState {
  final String errorMessage;

  FailerToPuaseMusic({required this.errorMessage});
}

final class AudioPostionUpdataSuccess extends MusicPlayerState {}

final class AudioDurationUpdataSuccess extends MusicPlayerState {}

final class SeekChangeSuccess extends MusicPlayerState {}
