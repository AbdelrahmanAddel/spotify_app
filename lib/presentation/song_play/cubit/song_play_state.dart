part of 'song_play_cubit.dart';

@immutable
sealed class SongPlayState {}

final class SongPlayInitial extends SongPlayState {}

final class AudioDurationUpdataSuccess extends SongPlayState {}

final class AudioPostionUpdataSuccess extends SongPlayState {}

final class SeekChangeSuccess extends SongPlayState {}

final class LoadiongPlayAudio extends SongPlayState {}

final class PlayAudioSuccess extends SongPlayState {}

final class FailerToPlayAudio extends SongPlayState {
  final String erroMessage;

  FailerToPlayAudio({required this.erroMessage});
}

final class LoadiongToPauseAudio extends SongPlayState {}

final class PauseAudioSuccess extends SongPlayState {}

final class FailerToPauseAudio extends SongPlayState {
  final String erroMessage;

  FailerToPauseAudio({required this.erroMessage});
}
