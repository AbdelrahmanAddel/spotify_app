import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_text_style.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({super.key, required this.firstText, required this.secondText, this.firstTextColor, this.secondTextColor, this.firstTextOnTap, this.secondTextOntTap});
  final String firstText;
  final String secondText;
  final Color ?firstTextColor;
  final Color ?secondTextColor;
 final Function()? firstTextOnTap;
 final Function()? secondTextOntTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,style: AppTextStyle.satoshi12.copyWith(color: firstTextColor,fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap=firstTextOnTap
            
          ),
          TextSpan(
            text: secondText,style: AppTextStyle.satoshi12.copyWith(color: secondTextColor,fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap=secondTextOntTap

            
          )


        ]
      )


    );
  }
}