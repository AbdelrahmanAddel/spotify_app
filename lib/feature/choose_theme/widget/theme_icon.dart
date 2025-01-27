import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget chooseThemeIcon({required String iconImage}) {
  return Column(
    children: [
      ClipOval(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1000, sigmaY: 1000),
            child: Container(
              width: 73,
              height: 73,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3), shape: BoxShape.circle),
              child: SvgPicture.asset(
                iconImage,
                fit: BoxFit.none,
                color: Colors.white,
              ),
            )),
      )
    ],
  );
}
