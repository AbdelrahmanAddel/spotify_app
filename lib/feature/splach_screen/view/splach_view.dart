import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/constants/assets.dart';

import '../../../constants/colors.dart';
import '../functions/delay_navigator.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();
    navigation(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splachScreenColor,
      body: Center(
        child: SvgPicture.asset(Assets.assetsImagesSpotifyLogo),
      ),
    );
  }
}
