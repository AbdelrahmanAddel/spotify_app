import 'package:flutter/material.dart';
import 'package:spotify_app/common/navigation.dart';
import 'package:spotify_app/common/widget/text_span.dart';
import 'package:spotify_app/core/data/model/auth/authentication_model.dart';
import 'package:spotify_app/core/domain/usescase/auth/sign_in.dart';
import 'package:spotify_app/core/domain/usescase/auth/sign_up.dart';
import 'package:spotify_app/core/service_locator.dart';
import 'package:spotify_app/core/util/app_colors.dart';
import 'package:spotify_app/core/util/app_string.dart';
import 'package:spotify_app/core/util/app_text_style.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_in_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_up_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/custom_widgets/custom_divider.dart';
import 'package:spotify_app/presentation/auth/view/widget/custom_widgets/custom_text_form_filed.dart';
import 'package:spotify_app/presentation/auth/view/widget/custom_widgets/google_apple_auth.dart';
import 'package:spotify_app/presentation/intro/view/widget/custom_matrial_buttom.dart';

class SignInBody extends StatelessWidget {
   SignInBody({super.key});
final formKey=GlobalKey<FormState>();
final emailController=TextEditingController();
final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
             CustomTextFormFiled(
              controller: emailController,
              hintText: AppString.enterUserNameOR),
              const SizedBox(height: 16),
               CustomTextFormFiled(
                controller: passwordController,
                hintText: AppString.password,
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_off,
                  color: AppColors.visibilityColor,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 22),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.recoveyPassword,
                    style: AppTextStyle.satoshi16Bold.copyWith(fontSize: 14),
                  ),
                ),
              ),
              CustomMatrialButtom(
                color: AppColors.green,
                width: 325,
                height: 80,
                text: AppString.signin,
                onPressed: () async{
                  if (formKey.currentState!.validate()) {
                    final responce=await sl<SignInUserCase>()(param: AuthenticationModel(
                      email: emailController.text,
                      password: passwordController.text,
                      fullName: 'fullName')); 
                      responce.fold(
                        (error)=>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())))
                        ,
                       (success)=>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(success.toString())))


                       ) ;
                  }
                  
                

                },
              ),
              const SizedBox(height: 35),
              const CustomDivider(dividerText: '  Or  '),
              const SizedBox(height: 20),
              const GoogleAppleAuthen(),
              const SizedBox(height: 58),
               CustomTextSpan(
                firstText: AppString.notAMember,
                secondText: AppString.registerNow,
                secondTextColor: AppColors.blue,
                firstTextColor: AppColors.white,
                secondTextOntTap: () {
                  Navigation.pushAndReplacement(context: context, screen:const SignUpView());
                  
                },
              ),
        ],
      ),
    );
  }
}