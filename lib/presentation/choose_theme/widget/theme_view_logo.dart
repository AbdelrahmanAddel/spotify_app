
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/assets.dart';

class ThemeViewLogo extends StatelessWidget {
  const ThemeViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:97.0,right: 97 ,top:39  ),
      child: Image.asset(Assets.assetsImagesSpotifylogo),
    );
  }
}