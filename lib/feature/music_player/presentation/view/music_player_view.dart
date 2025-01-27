// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:for_test/core/constants/colors.dart';
import 'package:for_test/feature/music_player/cubit/music_player_cubit.dart';

import '../../../home/presentation/cubit/get_songs_cubit.dart';
import '../sections/slider_section.dart';
import '../sections/control_buttom_section.dart';
import '../widget/music_player_app_bar.dart';
import '../widget/music_player_cover.dart';
import '../widget/song_details.dart';

class MusicPlayerView extends StatelessWidget {
  const MusicPlayerView({
    super.key,
    required this.currentIndex,
    required this.songDetails,
  });
  final int currentIndex;
  final GetSongsDetailsSuccessful songDetails;

  @override
  Widget build(BuildContext screenCtx) {
    return BlocProvider(
        create: (screenCtx) => MusicPlayerCubit(),
        child: BlocBuilder<MusicPlayerCubit, MusicPlayerState>(
          builder: (cubitContext, state) {
            final cubit = BlocProvider.of<MusicPlayerCubit>(cubitContext);
            return Scaffold(
              backgroundColor: AppColors.darkBackGround,
              body: SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: musicPlayerAppBar(
                          musicPlayerCubit: cubit, context: screenCtx),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: musicPlayerCover(
                            cubit: cubit, index: currentIndex)),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 17,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: songsDetails(
                          songDetails: songDetails, currentIndex: currentIndex),
                    ),
                    const SliverToBoxAdapter(
                        child: SizedBox(
                      height: 52,
                    )),
                    SliverToBoxAdapter(
                      child: SliderSection(
                        currentIndex: currentIndex,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 74,
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: controlButtomsSection(
                            musicPlayerCubit: cubit,
                            currentIndex: currentIndex, musicPlaterState: state)),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
