import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/song_play/cubit/song_play_cubit.dart';

class SongSliderSection extends StatelessWidget {
  const SongSliderSection({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SongPlayCubit(),
      child: BlocBuilder<SongPlayCubit, SongPlayState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<SongPlayCubit>(context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Slider(
                    min: 0.0,
                    max: cubit.duration.inSeconds.toDouble(),
                    value: cubit.postion.inSeconds.toDouble(),
                    onChanged: (value) {
                      cubit.audioseek(Duration(seconds: value.toInt()));
                    }),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cubit.formatDuration(cubit.postion),
                      style: AppTextStyle.satoshi12.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.sliderDurationColor),
                    ),
                    Text(
                      cubit.formatDuration(cubit.duration),
                      style: AppTextStyle.satoshi12.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.sliderDurationColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 46,
                ),
                MaterialButton(
                    onPressed: () {
                      cubit.audioPlaying
                          ? cubit.puaseAudio()
                          : cubit.playAudio(index: index);

                      print(cubit.audioPlaying);

                      print(state.toString());
                    },
                    child: state is LoadiongPlayAudio
                        ? CircularProgressIndicator(
                            color: AppColors.green,
                          )
                        : musicBottoms(cubit: cubit))
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget musicBottoms({required SongPlayCubit cubit}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      customCircleAvatar(
          radius: 25,
          circleAvatarChild: Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 30,
          )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: customCircleAvatar(
            radius: 40,
            circleAvatarChild: Icon(
              cubit.audioPlaying ? Icons.pause : Icons.play_arrow,
              size: 40,
            )),
      ),
      customCircleAvatar(
          radius: 25,
          circleAvatarChild: Icon(
            Icons.arrow_forward_ios_sharp,
            size: 30,
          )),
    ],
  );
}

Widget customCircleAvatar(
    {required double radius, required Widget circleAvatarChild}) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: AppColors.green,
    child: circleAvatarChild,
  );
}
