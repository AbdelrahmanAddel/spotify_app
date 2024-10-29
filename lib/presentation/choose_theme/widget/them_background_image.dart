
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/assets.dart';

class ThemeBackgroundImage extends StatelessWidget {
  const ThemeBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration (
      image:  DecorationImage(image: AssetImage(Assets.assetsImagesBackgroundImage2x))
      ),
    );
  }
}