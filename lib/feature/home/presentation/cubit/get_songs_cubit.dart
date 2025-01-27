import 'package:bloc/bloc.dart';
import 'package:for_test/feature/home/data/model/song_details_model.dart';
import 'package:for_test/service/service_locator.dart';
import 'package:meta/meta.dart';

import '../../domain/usecase/get_song_use_case.dart';

part 'get_songs_state.dart';

class GetSongsCubit extends Cubit<GetsongsState> {
  GetSongsCubit() : super(GetsongsInitial());
  List<String> songCover = [
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEd%20Sheeran%20-%20Shape%20Of%20You.jpg?alt=media&token=2f7bb324-56c4-44b6-8d1d-d4089f3d9d70',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FRihanna%20-%20Diamonds.jpg?alt=media&token=292c5cc7-57fe-4259-afd0-f73c6947db90',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FDrake%20-%20In%20My%20Feelings.jpg?alt=media&token=d6e81008-4cff-4344-aaf4-6ae4706f68cf',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.jpg?alt=media&token=07a617b7-9e5f-4382-9170-52ee6e80bafb',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FCalvin%20Harris%20%2C%20Dua%20Lipa%20%20-%20One%20Kiss.jpg?alt=media&token=13ded10f-4e60-45bd-8622-be388e9b6675',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEnrique%20Iglesias%20-%20Tonight.jpg?alt=media&token=6fffc574-5fde-407c-b75b-6514b59165e8',
  ];
  getSongDetails() async {
    try {
      emit(LoadingToGetSongsDetails());
      final reponce = await sl<GetSongUseCase>().call();
      reponce.fold(
          (songDetailsList) => emit(
              GetSongsDetailsSuccessful(songsDetailsList: songDetailsList)),
          (errorMessage) =>
              emit(FailerToGetSongDetails(errorMessage: errorMessage)));
    } on Exception catch (e) {
      emit(FailerToGetSongDetails(errorMessage: 'Some Thing Was Wrong'));
      print(e);
    }
  }
}
