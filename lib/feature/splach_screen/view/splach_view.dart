import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:for_test/core/constants/assets.dart';
import 'package:for_test/feature/choose_auth/view/choose_auth_view.dart';
import 'package:for_test/feature/get_start/view/get_start_view.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/constants/colors.dart';
import '../../../core/database/cache_helper.dart';
import '../../../service/service_locator.dart';
import '../functions/delay_navigator.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  bool isVisited =
      sl<CacheHelper>().getBool(key: AppStrings.isVisited) ?? false;
  @override
  void initState() {
    super.initState();
    if (isVisited == true) {
      navigation(context: context, screen: ChooseAuthView());
    } else {
      navigation(context: context, screen: GetStartView());
    }
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
