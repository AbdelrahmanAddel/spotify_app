import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'music_player_state.dart';

class MusicPlayerCubit extends Cubit<MusicPlayerState> {
  MusicPlayerCubit() : super(MusicPlayerInitial()) {
    player.onDurationChanged.listen((_duration) {
      duration = _duration;
      emit(AudioDurationUpdataSuccess());
    });
    player.onPositionChanged.listen((_postion) {
      postion = _postion;
      emit(AudioPostionUpdataSuccess());
    });
  }
  List<String> songCover = [
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEd%20Sheeran%20-%20Shape%20Of%20You.jpg?alt=media&token=2f7bb324-56c4-44b6-8d1d-d4089f3d9d70',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FRihanna%20-%20Diamonds.jpg?alt=media&token=292c5cc7-57fe-4259-afd0-f73c6947db90',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FDrake%20-%20In%20My%20Feelings.jpg?alt=media&token=d6e81008-4cff-4344-aaf4-6ae4706f68cf',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.jpg?alt=media&token=07a617b7-9e5f-4382-9170-52ee6e80bafb',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FCalvin%20Harris%20%2C%20Dua%20Lipa%20%20-%20One%20Kiss.jpg?alt=media&token=13ded10f-4e60-45bd-8622-be388e9b6675',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/covers%2FEnrique%20Iglesias%20-%20Tonight.jpg?alt=media&token=6fffc574-5fde-407c-b75b-6514b59165e8',
  ];
  List<String> songs = [
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FEnrique%20Iglesias%20-%20Tonight.mp3?alt=media&token=d2f60bf7-c430-4800-a1d3-446bdf15682a',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FRihanna%20-%20Diamonds.mp3?alt=media&token=4d22fb09-6ede-4371-9e52-8a8347396aa3',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.mp3?alt=media&token=f6d05a1f-9504-490d-952a-45a9a942d33f',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.mp3?alt=media&token=f6d05a1f-9504-490d-952a-45a9a942d33f',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.mp3?alt=media&token=f6d05a1f-9504-490d-952a-45a9a942d33f',
    'https://firebasestorage.googleapis.com/v0/b/for-test-df01c.appspot.com/o/songs%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.mp3?alt=media&token=f6d05a1f-9504-490d-952a-45a9a942d33f',
  ];
  Duration duration = Duration.zero;
  Duration postion = Duration.zero;
  bool isPlaying = false;
  bool isRepeating = false;
  final AudioPlayer player = AudioPlayer();

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hours = duration.inHours;
    final minutes =
        twoDigits(duration.inMinutes.remainder(60)); //بتهندل الوقت بتاع الاغنيه
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    if (hours > 0) {
      return '$hours:$minutes:$seconds'; // إذا كان هناك ساعات
    } else {
      return '$minutes:$seconds'; // إذا لم يكن هناك ساعات
    }
  }

  void playMusic({required int index}) async {
    try {
      emit(LoadingToPlayMusic());
      await player.play(UrlSource(songs[index]));
      isPlaying = true;
      emit(PlayMusicSuccess());
    } on Exception catch (e) {
      emit(FailerToPlayMusic(errorMessage: 'Error To Play Music !'));
      print(e.toString());
    }
  }

  void audioseek(Duration postion) {
    try {
      player.seek(postion);
      emit(SeekChangeSuccess());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void puaseMusic() async {
    try {
      emit(LoadingToPuaseMusic());
      await player.pause();
      isPlaying = false;
      emit(PuaseMusicSuccess());
    } on Exception catch (e) {
      emit(FailerToPuaseMusic(errorMessage: 'Something Went Wrong !'));
      print(e.toString());
    }
  }

  void repeatMusic() async {
    await player.setReleaseMode(ReleaseMode.loop);
    isRepeating = true;
  }

  void stopRepeatingMusic() async {
    await player.setReleaseMode(ReleaseMode.stop);
    isRepeating = false;
  }

  Future<void> closeMusic() async {
    await player.stop();
    player.dispose();
    return super.close();
  }
}
