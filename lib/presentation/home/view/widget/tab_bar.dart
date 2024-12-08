import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';

Widget tabs(TabController controller) {
  return TabBar(
      indicatorColor: AppColors.containerGreen,
      indicatorWeight: 4,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 6.5),
      controller: controller,
      unselectedLabelColor: AppColors.unSelectTextColor,
      isScrollable: true,
      labelColor: AppColors.whiteText,
      labelStyle: AppTextStyle.satoshi26Bold.copyWith(fontSize: 20),
      tabs: const [
        Text(
          AppString.news,
        ),
        Text(AppString.video),
        Text(AppString.artists),
        Text(AppString.podcast),
      ]);
}
