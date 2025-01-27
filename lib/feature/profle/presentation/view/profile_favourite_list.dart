import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/core/common/widget/custom_circle_progress_indicator.dart';
import 'package:for_test/feature/home/presentation/cubit/get_songs_cubit.dart';

import '../widget/profile_container_content.dart';

class ProfileFavouritesList extends StatelessWidget {
  const ProfileFavouritesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetSongsCubit()..getSongDetails(),
      child: BlocBuilder<GetSongsCubit, GetsongsState>(
        builder: (context, state) {
          if (state is LoadingToGetSongsDetails) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [customCircleProgressIndicator()]);
          } else if (state is GetSongsDetailsSuccessful) {
            final cubit = BlocProvider.of<GetSongsCubit>(context);
            return ListView.separated(
              itemCount: state.songsDetailsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: profileContainerContent(
                      songCubit: cubit,
                      currentIndex: index,
                      songDetails: state),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            );
          } else {
            return const Text('Some Thing Went Wrong !');
          }
        },
      ),
    );
  }
}
