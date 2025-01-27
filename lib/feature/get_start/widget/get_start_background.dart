import 'package:flutter/material.dart';

class GetStartBackChooseThemeBackGround extends StatelessWidget {
  const GetStartBackChooseThemeBackGround({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
