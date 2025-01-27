import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widget/custom_circle_progress_indicator.dart';
import '../cubit/get_songs_cubit.dart';
import '../widgets/song_view_list_content.dart';

class SongViewListSection extends StatelessWidget {
  const SongViewListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0),
      child: SizedBox(
        height: 250,
        child: BlocProvider(
          create: (context) => GetSongsCubit()..getSongDetails(),
          child: BlocBuilder<GetSongsCubit, GetsongsState>(
            builder: (context, state) {
            final cubit=BlocProvider.of<GetSongsCubit>(context);
              return ListView.separated(
                itemCount: cubit.songCover.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (state is GetSongsDetailsSuccessful) {
                    return SongViewListContent(
                      index: index,
                      songCubit: cubit,
                      state: state,
                    );
                  } else if (state is FailerToGetSongDetails) {
                    return Text(state.errorMessage);
                  } else {
                    return customCircleProgressIndicator();
                  }
                }, separatorBuilder: (BuildContext context, int index) { 
                  return const SizedBox(width: 15,);
                 },
              );
            },
          ),
        ),
      ),
    );
  }
}
