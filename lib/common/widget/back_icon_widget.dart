import 'package:flutter/material.dart';
import 'package:for_test/constants/assets.dart';
import 'package:for_test/constants/colors.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
    this.color,
    this.onTap,
  });
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            color: color ?? AppColors.darkBackGround,
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 1,
                  blurStyle: BlurStyle.normal)
            ]),
        child: Image.asset(
          Assets.assetsImagesLeftArrow,
          color: Colors.white,
        ),
      ),
    );
  }
}
