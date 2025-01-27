import 'package:flutter/material.dart';

import '../../constants/app_text_style.dart';
import '../../constants/colors.dart';

Widget orLine() {
  return Row(
    children: [
      const Expanded(
        child: Divider(
          thickness: 0.6,
          color: Colors.white,
        ),
      ),
      Text('  Or  ',
          style:
              AppTextStyle.satoshiRegualar12.copyWith(color: AppColors.dCDCDC)),
      const Expanded(
        child: Divider(
          thickness: 0.6,
          color: Colors.white,
        ),
      ),
    ],
  );
}
