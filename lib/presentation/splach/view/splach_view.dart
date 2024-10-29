import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/assets.dart';
import 'package:spotify_app/presentation/intro/view/get_start_view.dart';

import '../../../common/navigation.dart';


class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigation.push(context: context, screen: const GetStartView());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.splachScreen,
      child: Center(child: Image.asset(Assets.assetsImagesSpotifylogo)),
    );
  }
}
