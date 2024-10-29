import 'package:flutter/material.dart';
import 'package:spotify_app/common/widget/text_span.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/core/util/assets.dart';
import 'package:spotify_app/presentation/auth/view/widget/custom_text_form_filed.dart';
import 'package:spotify_app/presentation/intro/view/widget/custom_matrial_buttom.dart';

import '../../../common/widget/back_icon.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:33.0),
        child: Column(
          children: [
            
          Row(
            children: [
              const BackIcon(),
        
              Padding(
                padding: const EdgeInsets.only(left: 85.0,top: 36),
                child: SizedBox(
                  width: 108,
                  height: 103,
                  child: Image.asset(Assets.assetsImagesSpotifylogo),
                ),
              )
        
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top:80.0,bottom: 22),
            child: Text(AppString.signin,style: AppTextStyle.satoshi30Bold,),
          ),
          const CustomTextSpan(firstText: AppString.ifAny, secondText: AppString.clickHere,secondTextColor: AppColors.clickHereColor,firstTextColor: AppColors.ifAnyColor,),
          const SizedBox(height: 38,),
          const CustomTextFormFiled(hintText: AppString.enterUserNameOR,),
          const SizedBox(height: 16,),
          const CustomTextFormFiled(hintText: AppString.password,obscureText: true,suffixIcon: Icon(Icons.visibility_off,color: AppColors.visibilityColor,),),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,bottom: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(AppString.recoveyPassword,style: AppTextStyle.satoshi16Bold.copyWith(fontSize: 14),)),
          ),
          CustomMatrialButtom(color: AppColors.green, width: 325, height: 80, text: AppString.signin,onPressed: () {
            
          },)
        
        
          ],
        ),
      ),
    );
  }
}