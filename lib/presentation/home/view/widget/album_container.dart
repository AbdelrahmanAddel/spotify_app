import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/core/util/assets.dart';

class AlbumContainer extends StatelessWidget {
  const AlbumContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 39),
      width: 334,
      height: 118,
      decoration: BoxDecoration(
        color: AppColors.containerGreen,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.newAlbum,
                  style: AppTextStyle.satoshi19Bold.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 4),
                const Text(
                  AppString.happierThan,
                  style: AppTextStyle.satoshi19Bold,
                ),
                const SizedBox(height: 4),
                Text(
                  AppString.billieEl,
                  style: AppTextStyle.satoshi19Bold.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Assets.assetsImagesTopRightUnion),
          ),
        ],
      ),
    );
  }
}
