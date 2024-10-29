import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/assets.dart';
import 'widget/choose_auth_body.dart';

class ChooseAuth extends StatelessWidget {
  const ChooseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:AppColors.brown
      ),
      child: Stack(
        children: [
    Padding(
     padding: const EdgeInsets.only(top:36.0, left: 30),
     child:Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset(Assets.assetsImagesBackIcon,fit: BoxFit.none,)),
   ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Assets.assetsImagesTopRightUnion)),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(Assets.assetsImagesBottomRIghtUnion)),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(Assets.assetsImagesBilleEil)),
          const ChooseThemeBody(),

        ],
      ),
    );
  }
}

