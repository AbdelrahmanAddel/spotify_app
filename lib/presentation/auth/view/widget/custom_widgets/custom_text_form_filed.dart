import 'package:flutter/material.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_text_style.dart';

class CustomTextFormFiled extends StatelessWidget {
   const CustomTextFormFiled({super.key, required this.hintText, this.obscureText,this.suffixIcon,this.controller});
  final String hintText;

  final bool ?obscureText;
 final  Widget? suffixIcon;
 final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:334 ,
      height: 80,
      child: TextFormField( 
        controller:controller ,
        validator: (value) {
          if(value !=null &&value.isNotEmpty){
            return null;
          }
          else{
            return 'This Field Is Required';
          }
        },
        obscureText:obscureText??false ,
 
        decoration: InputDecoration( 
          suffixIcon: suffixIcon, 
          
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: AppColors.grey,width: 0.5)
          ),  
          hintText: hintText,
          hintStyle: AppTextStyle.satoshi16Bold
        ),
      
      
      ),
    );
  }
}