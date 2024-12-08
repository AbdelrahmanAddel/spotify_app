
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/assets.dart';

class AlbumContainerImage extends StatelessWidget {
  const AlbumContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: 350,
        height: 155,
        child: Image.asset(
          Assets.assetsImagesBilleContainerImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}