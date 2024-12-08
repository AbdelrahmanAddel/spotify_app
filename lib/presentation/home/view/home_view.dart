import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/presentation/home/cubit/new_song_cubit.dart';
import 'package:spotify_app/presentation/home/view/widget/tab_bar.dart';
import 'widget/album_container.dart';
import 'widget/album_container_image.dart';
import 'widget/custom_circle_progress_indicator.dart';
import 'widget/home_app_bar.dart';
import 'widget/home_play_list.dart';
import 'widget/list_view_album.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewSongCubit()..getSongs(),
      child: Scaffold(
        backgroundColor: AppColors.brown,
        body: SafeArea(
          child: BlocBuilder<NewSongCubit, NewSongState>(
            builder: (context, state) {
              final cubit = BlocProvider.of<NewSongCubit>(context);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 33.0),
                    child: Stack(
                      children: [
                        HomeAppBar(),
                        AlbumContainer(),
                        AlbumContainerImage(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 41),
                  tabs(controller),
                  const SizedBox(height: 31),
                  state is GetSongsSuccessful
                      ? Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: AlbumListView(
                            cubit: cubit,
                            getSongsSuccessfulState: state,
                          ),
                        )
                      : state is FailerToGetSongs
                          ? Text(state.errorMessage)
                          : CustomCircularProgressIndicator(),
                  HomePlayList()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
