import 'package:flutter/material.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/common/widget/text_span.dart';
import 'package:spotify_app/core/data/model/auth/authentication_model.dart';
import 'package:spotify_app/core/domain/usescase/auth/sign_up.dart';
import 'package:spotify_app/core/service_locator.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_in_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/custom_widgets/custom_text_form_filed.dart';
import 'package:spotify_app/presentation/intro/view/widget/custom_matrial_buttom.dart';

import '../custom_widgets/custom_divider.dart';
import '../custom_widgets/google_apple_auth.dart';

class SignUpBody extends StatelessWidget {
   SignUpBody({super.key});
 
  final emailContoller=TextEditingController();
  final fullNameController=TextEditingController();
  final passwordController=TextEditingController();
 final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
           CustomTextFormFiled(
            controller: fullNameController,
            hintText: AppString.fullName),
          const SizedBox(height: 16),
           CustomTextFormFiled(
            controller:emailContoller ,
            hintText: AppString.enterName),
          const SizedBox(height: 20),
           CustomTextFormFiled(
            controller:passwordController ,
            hintText: AppString.password,
            obscureText: true,
            suffixIcon: Icon(
              Icons.visibility_off,
              color: AppColors.visibilityColor,
            ),
          ),
          const SizedBox(height: 33),
          CustomMatrialButtom(
            color: AppColors.green,
            width: 325,
            height: 80,
            text: AppString.signin,
            onPressed: ()async {
              if (formKey.currentState!.validate()) {
                final responce =await sl<SignUpUseCase>().call(
                param: AuthenticationModel(
                email: emailContoller.text,
                password: passwordController.text, 
                fullName: fullNameController.text)
                
                );
                responce.fold(
                  (error){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(error.toString())));

                  },
                 (success){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(success.toString())));

                 });
                
                
              }
            },
          ),
          const SizedBox(height: 31),
          const CustomDivider(dividerText: '  Or  '),
          const SizedBox(height: 20),
          const GoogleAppleAuthen(),
          const SizedBox(height: 57,),
           CustomTextSpan(
            firstText: AppString.dontHaveAccount,
            secondText: AppString.signin,
            secondTextColor: AppColors.blue,
            firstTextColor: AppColors.white,
            secondTextOntTap: () {
              Navigation.pushAndReplacement(context: context, screen: const SignInView());
            },
          ),
        ],
      ),
    );
  }
}
