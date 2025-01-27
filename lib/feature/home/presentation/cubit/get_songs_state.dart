part of 'get_songs_cubit.dart';

@immutable
sealed class GetsongsState {}

final class GetsongsInitial extends GetsongsState {}

final class LoadingToGetSongsDetails extends GetsongsState {}

final class GetSongsDetailsSuccessful extends GetsongsState {
  final List<SongDetailsModel> songsDetailsList;

  GetSongsDetailsSuccessful({required this.songsDetailsList});
}

final class FailerToGetSongDetails extends GetsongsState {
  final String errorMessage;

  FailerToGetSongDetails({required this.errorMessage});
}
