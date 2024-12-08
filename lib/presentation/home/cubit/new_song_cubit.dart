import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spotify_app/core/data/data_source/song/firebase_playlist.dart';
import 'package:spotify_app/core/data/repositry/song/albums_repo_imple.dart';
import 'package:spotify_app/core/domain/entity/song/play_list_entity.dart';
import 'package:spotify_app/core/domain/usescase/song/get_song.dart';
import 'package:spotify_app/core/service_locator.dart';

import '../../../core/domain/entity/song/song.dart';
import '../../../core/domain/usescase/song/get_playlist.dart';

part 'new_song_state.dart';

class NewSongCubit extends Cubit<NewSongState> {
  NewSongCubit() : super(NewSongInitial());

  GetPlaylistUserCase getPlaylistUserCase = GetPlaylistUserCase(
      playListRepositry: PlayListRepositryImplementation(
          firebasePlaylistImplenmtaion: FirebasePlaylistImplenmtaion()));

  List<String> songCover = [
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEnrique%20Iglesias%20-%20Tonight.jpg?alt=media&token=6fffc574-5fde-407c-b75b-6514b59165e8',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FRihanna%20-%20Diamonds.jpg?alt=media&token=292c5cc7-57fe-4259-afd0-f73c6947db90'
        'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEd%20Sheeran%20-%20Shape%20Of%20You.jpg?alt=media&token=2f7bb324-56c4-44b6-8d1d-d4089f3d9d70',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.jpg?alt=media&token=07a617b7-9e5f-4382-9170-52ee6e80bafb',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FCalvin%20Harris%20%2C%20Dua%20Lipa%20%20-%20One%20Kiss.jpg?alt=media&token=13ded10f-4e60-45bd-8622-be388e9b6675',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FDrake%20-%20In%20My%20Feelings.jpg?alt=media&token=d6e81008-4cff-4344-aaf4-6ae4706f68cf'
  ];
  void getSongs() async {
    emit(LoadingToGetSongs());
    final responce = await sl<GetSongUseCase>().call();

    responce.fold((getSongs) => emit(GetSongsSuccessful(songs: getSongs)),
        (failerMessage) => emit(FailerToGetSongs(errorMessage: failerMessage)));
  }

  getPlayListSong() async {
    emit(LoadingToGetPlayList());
    final responce = await getPlaylistUserCase.call();
    responce.fold(
        (songs) => emit(GetPlayListSuccessFul(songs: songs)),
        (errorMessage) =>
            emit(FailerToGetPlayList(errorMessage: errorMessage)));
  }
}
