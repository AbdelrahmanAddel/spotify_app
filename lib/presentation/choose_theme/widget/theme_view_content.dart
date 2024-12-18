

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/core/util/assets.dart';
import 'package:spotify_app/presentation/auth/view/choose_auth_view.dart';
import 'package:spotify_app/presentation/choose_theme/cubit/theme_cubit.dart';
import 'package:spotify_app/presentation/intro/view/widget/custom_matrial_buttom.dart';

import 'choose_theme_icon.dart';

class ThemeBackgrounfContent extends StatelessWidget {
  const ThemeBackgrounfContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  31.0),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 483),
              child: Text(AppString.chooseMode,style: AppTextStyle.satoshi22Bold.copyWith(decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 32,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooseThemeIcon(imagePath: Assets.assetsImagesDarkMode, text: AppString.darkMode,onTap:(){ 
                  context.read<ThemeCubit>().updataThemeMode(ThemeMode.dark);
                 },),
                const SizedBox(width: 72,),
                ChooseThemeIcon(imagePath: Assets.assetsImagesLightMode, text: AppString.lightMode,onTap:(){
                  context.read<ThemeCubit>().updataThemeMode(ThemeMode.light );
                },),
              ],
            ),
           const SizedBox(height: 68,),
            CustomMatrialButtom(color: AppColors.green, width: 329, height: 92, text: AppString.continuee,onPressed: () {
              Navigation.push(context: context, screen: const ChooseAuth());
            },
             )
          ],
        ),
      ),
    );
  }
}

