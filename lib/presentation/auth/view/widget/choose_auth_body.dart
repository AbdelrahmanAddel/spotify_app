import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/core/util/assets.dart';

import 'choose_auth_row.dart';

class ChooseThemeBody extends StatelessWidget {
  const ChooseThemeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:34.0),
      child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top:175,left: 77 ,right:77  ,bottom: 55),
          child: Image.asset(Assets.assetsImagesSpotifylogo),
        ),
        const Text(AppString.enjoy,style: AppTextStyle.satoshi26Bold,),
        const Padding(
          padding: EdgeInsets.only(top:  21,bottom :50),
          child: Text(AppString.spotifyIs,style: AppTextStyle.satoshi17Regular,textAlign: TextAlign.center,),
        ),
        const ChooseAuthRow()
        
        ]
        ),
    );
  }
}

