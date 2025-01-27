import 'package:flutter/material.dart';
import 'package:for_test/common/widget/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/common/widget/custom_circle_progress_indicator.dart';
import 'package:for_test/common/widget/custom_toast.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/feature/home/presentation/view/home_view.dart';
import 'package:for_test/fuctions/navigation.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../get_start/widget/custom_text_form_field.dart';
import '../../../sign_in/presentation/cubit/signin_cubit.dart';

Widget signInBodySection() {
  return BlocProvider(
    create: (context) => SigninCubit(),
    child: BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SignInSuccessful) {
          customFlutterToast(message: state.successMessage,color: AppColors.greenButtom);
          Navigation.pushReplaceme(context: context, navScreen: const HomeView());
        } else if (state is FailerToSignIn) {
          customFlutterToast(message: state.errorMessage);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<SigninCubit>(context);

        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              customTextFormField(hintText: AppStrings.enterUserName,controller: cubit.emailController),
              const SizedBox(
                height: 25,
              ),
              customTextFormField(
                  hintText: AppStrings.password,
                  controller: cubit.passwordController,
                  suffixIcon: IconButton(
                      onPressed: () {
                        cubit.changeTextState();
                      },
                      icon: Icon(cubit.obscureText
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  obscureText: cubit.obscureText),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.recoveryPassword,
                    style: AppTextStyle.satoshiBold14,
                  )),
              const SizedBox(
                height: 22,
              ),
              state is LoadingToSignIn?
              customCircleProgressIndicator():
              customButton(
                width: 325,
                height: 80,
                child: const Text(
                  AppStrings.signIn,
                  style: AppTextStyle.satoshiBold22,
                ),
                onTap: () {
                  if (cubit.formKey.currentState!.validate()) {
                    cubit.signInWithEmailAndPassword();
                  }
                },
              ),
            ],
          ),
        );
      },
    ),
  );
}
