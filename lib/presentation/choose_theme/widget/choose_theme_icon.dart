

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseThemeIcon extends StatelessWidget {
  const ChooseThemeIcon({
    super.key, required this.imagePath, required this.text, this.onTap,
  });
final String imagePath;
final String text;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 73,
                height: 73,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  shape: BoxShape.circle
                ),
                child:SvgPicture.asset(imagePath,fit: BoxFit.none,)
                
                                 
              ),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        Text(text,style: AppTextStyle.satoshi17boldr.copyWith(decoration: TextDecoration.none),)
      ],
    );
  }
}