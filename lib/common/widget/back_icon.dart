import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/core/util/assets.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top:36.0, left: 16),
     child:GestureDetector(
      onTap: (){
        Navigation.pop(context: context);
      },
       child: Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(Assets.assetsImagesBackIcon,fit: BoxFit.none,)),
     ),
       );
  }
}

