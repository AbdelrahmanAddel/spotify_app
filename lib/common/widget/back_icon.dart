import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/assets.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key, this.top, this.left, this.onTap,
  });
  final double? top;
  final double?left;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:  EdgeInsets.only(top: top?? 30.0, left: left ??16),
     child:GestureDetector(
      onTap: (){
        Navigation.pop(context: context);
      },
       child: Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
          color: AppColors.darkBackground,
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(Assets.assetsImagesBackIcon,fit: BoxFit.none,)),
     ),
       );
  }
}

