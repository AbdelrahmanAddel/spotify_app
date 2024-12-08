
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/assets.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const Icon(Icons.search,size: 30,color: AppColors.iconColor),
      SizedBox(
        width:108 ,
        height: 33,
      child: Image.asset(Assets.assetsImagesSpotifylogo,fit: BoxFit.contain,)),
      const Icon(Icons.more_vert,size: 30,color: AppColors.iconColor,)
    ],
    
    );
  }
}