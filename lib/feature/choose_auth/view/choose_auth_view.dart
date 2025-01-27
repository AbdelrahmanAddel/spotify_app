import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/core/constants/assets.dart';
import 'package:for_test/core/constants/colors.dart';

import '../widget/choose_auth_body.dart';

class ChooseAuthView extends StatelessWidget {
  const ChooseAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackGround,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Assets.assetsImagesTopRight),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(Assets.assetsImagesBottomRight),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'asset/images/billeEille.png',
                fit: BoxFit.contain,
              )),
          ChooseAuthBody(),
        ],
      ),
    );
  }
}
