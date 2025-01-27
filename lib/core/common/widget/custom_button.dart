import 'package:flutter/material.dart';
import 'package:for_test/core/constants/colors.dart';

Widget customButton(
    {required double width,
    required double height,
    Widget? child,
    Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.greenButtom,
      ),
      child: Center(child: child),
    ),
  );
}
