
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';

class ThemeBackgroundColor extends StatelessWidget {
  const ThemeBackgroundColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgoundWhite,
    );
  }
}