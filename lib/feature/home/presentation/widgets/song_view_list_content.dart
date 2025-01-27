import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:for_test/constants/assets.dart';
import 'package:for_test/feature/music_player/presentation/view/music_player_view.dart';
import 'package:for_test/fuctions/navigation.dart';

import '../../../../constants/app_text_style.dart';
import '../../../../constants/colors.dart';
import '../cubit/get_songs_cubit.dart';

class SongViewListContent extends StatelessWidget {
  const SongViewListContent({
    super.key,
    required this.songCubit,
    required this.state,
    required this.index,
  });

  final GetSongsCubit songCubit;
  final GetSongsDetailsSuccessful state;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 147,
          height: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: NetworkImage(songCubit.songCover[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigation.push(
                    context: context, pushScreen:  MusicPlayerView(currentIndex: index, songDetails: state,));
              },
              child: Container(
                transform: Matrix4.translationValues(6, 8, 0),
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.playIconBackGorung,
                ),
                child: Center(
                  child: SvgPicture.asset(Assets.assetsImagesPlay),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 13),
        Text(
          state.songsDetailsList[index].title,
          style: AppTextStyle.satoshiBold16,
        ),
        const SizedBox(height: 3),
        Text(
          state.songsDetailsList[index].artist,
          style: AppTextStyle.satoshiRegualar14,
        ),
      ],
    );
  }
}
