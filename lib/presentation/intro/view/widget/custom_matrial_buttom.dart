import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_text_style.dart';

class CustomMatrialButtom extends StatelessWidget {
  const CustomMatrialButtom({super.key, this.onPressed, required this.color, required this.width, required this.height, required this.text});
final Function()? onPressed;
final Color color;
final double width;
final double height;
final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
     shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
     ),
      height:height ,
      minWidth:width ,
      color:color ,
      onPressed:onPressed ,
      child: Text(text,style: AppTextStyle.satoshi22Bold,),
    
     );
  }
}