import 'package:flutter/material.dart';

import 'package:for_test/core/constants/colors.dart';

import '../sections/album_container_section.dart';
import '../sections/home_app_bar_section.dart';
import '../sections/play_list_section.dart';
import '../sections/song_view_list_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackGround,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33.0),
                child: homeAppBarSection(context: context),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: albumContainerSection(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            const SliverToBoxAdapter(
              child: SongViewListSection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 37,
              ),
            ),
            SliverToBoxAdapter(
              child: playListSection(),
            )
          ],
        ),
      ),
    );
  }
}
