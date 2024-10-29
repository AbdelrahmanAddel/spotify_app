
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/assets.dart';

class GetStartViewBackGroundImage extends StatelessWidget {
  const GetStartViewBackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesGetStartViewImage),
        ),
      ),
    );
  }
}
