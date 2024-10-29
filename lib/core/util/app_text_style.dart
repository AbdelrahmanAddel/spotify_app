import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';

class AppTextStyle {
  static const satoshi25Regular=TextStyle(
fontFamily: 'Satoshi Regular',
fontSize: 25,
fontWeight: FontWeight.w100,
color: AppColors.whiteText

  );
static const  satoshi17Regular=TextStyle(
  decoration: TextDecoration.none,
fontFamily: 'Satoshi Regular',
fontSize: 17,
fontWeight: FontWeight.w100,
color: AppColors.grey
  );
static const  satoshi17boldr=TextStyle(
fontFamily: 'Satoshi Regular',
fontSize: 17,
fontWeight: FontWeight.bold,
color: AppColors.whiteText
  );
static const  satoshi12=TextStyle(
  decoration: TextDecoration.none,
fontFamily: 'Satoshi Regular',
fontSize: 12,
color: AppColors.whiteText
  );
static const  satoshi22Bold=TextStyle(
fontFamily: 'Satoshi',
fontSize: 22,
fontWeight: FontWeight.bold,
color: AppColors.white
  );
static const  satoshi26Bold=TextStyle(
  decoration:TextDecoration.none,
fontFamily: 'Satoshi',
fontSize: 26,
fontWeight: FontWeight.bold,
color: AppColors.whiteText
  );
static const  satoshi30Bold=TextStyle(
  decoration:TextDecoration.none,
fontFamily: 'Satoshi',
fontSize: 30,
fontWeight: FontWeight.bold,
color: AppColors.backgoundWhite
  );
static const  satoshi16Bold=TextStyle(
  decoration:TextDecoration.none,
fontFamily: 'Satoshi ',
fontSize: 16,
fontWeight: FontWeight.bold,
color: AppColors.textFormFieldColor
  );
}