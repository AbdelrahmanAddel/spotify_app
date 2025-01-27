import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import '../widgets/album_conatiner_section_content.dart';

Widget albumContainerSection() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.topCenter,
    children: [
      Container(
          width: 334,
          height: 118,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.greenButtom),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              albumContainerSectionContent(),
            ],
          )),
      Positioned(
        top: -30,
        child: SizedBox(
          width: 334,
          height: 150,
          child: Image.asset(
            Assets.assetsImagesBilleContainerImage,
            fit: BoxFit.none,
          ),
        ),
      ),
    ],
  );
}
