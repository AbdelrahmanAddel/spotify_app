import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/presentation/home/cubit/new_song_cubit.dart';

import '../cubit/song_play_cubit.dart';
import 'section/song_cover_section.dart';
import 'section/song_details_section.dart';
import 'section/song_play_appbar_section.dart';
import 'section/song_slider_section.dart';

class SongPlayView extends StatelessWidget {
  const SongPlayView({
    super.key,
    required this.index,
    required this.getSongsSuccessful,
  });
  final int index;
  final GetSongsSuccessful getSongsSuccessful;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Padding(
        padding: const EdgeInsets.only(left: 27.0, right: 27, top: 40),
        child: BlocProvider(
          create: (context) => SongPlayCubit(),
          child: BlocBuilder<SongPlayCubit, SongPlayState>(
            builder: (context, state) {
              final cubit = BlocProvider.of<SongPlayCubit>(context);
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: songPlayAppBarSection(onTap: cubit.close),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 29,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: songCoverSection(
                        getSongsSuccessful: getSongsSuccessful,
                        cubit: cubit,
                        index: index),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 17,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: songDetailsSection(
                        getSongsSuccessful: getSongsSuccessful, index: index, cubit: cubit),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SongSliderSection(
                      index: index,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
