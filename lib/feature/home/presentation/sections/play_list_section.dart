import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/colors.dart';
import '../cubit/get_songs_cubit.dart';
import '../widgets/play_list_content.dart';

Widget playListSection() {
  return BlocProvider(
    create: (context) => GetSongsCubit()..getSongDetails(),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppStrings.playList,
                style: AppTextStyle.satoshiBold20,
              ),
              Text(AppStrings.seeMore,
                  style: AppTextStyle.satoshiRegualar12
                      .copyWith(color: AppColors.c6C6C6)),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BlocBuilder<GetSongsCubit, GetsongsState>(
          builder: (context, state) {
            if (state is GetSongsDetailsSuccessful) {
              return SizedBox(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListView.separated(
                    itemCount: state.songsDetailsList.length,
                    itemBuilder: (context, index) {
                      return playListContent(
                          currentIndex: index, songDetails: state);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 25,
                      );
                    },
                  ),
                ),
              );
            } else {
              return const Text('Some Thing Went Wrong ! ');
            }
          },
        ),
      ],
    ),
  );
}
