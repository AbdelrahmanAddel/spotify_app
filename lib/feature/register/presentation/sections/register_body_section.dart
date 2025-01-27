import 'package:flutter/material.dart';
import 'package:for_test/common/widget/custom_button.dart';
import 'package:for_test/common/widget/custom_toast.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/feature/register/presentation/cubit/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/widget/custom_circle_progress_indicator.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../get_start/widget/custom_text_form_field.dart';

Widget registerBodySection() {
  return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            customFlutterToast(
                message: AppStrings.verifyEmail, color: AppColors.greenButtom);
          } else if (state is FailerToRegister) {
            customFlutterToast(message: state.failerMessage, color: Colors.red);
          }
        },
        builder: (context, state) {
          final cubit = BlocProvider.of<RegisterCubit>(context);

          return Form(
            key: cubit.registerFormKey,
            child: Column(
              children: [
                customTextFormField(
                    controller: cubit.fullNameController,
                    hintText: AppStrings.fullName),
                const SizedBox(
                  height: 18,
                ),
                customTextFormField(
                    controller: cubit.emailController,
                    hintText: AppStrings.enterEmail),
                const SizedBox(
                  height: 18,
                ),
                customTextFormField(
                    controller: cubit.passwordController,
                    hintText: AppStrings.password,
                    suffixIcon: IconButton(
                        onPressed: () {
                          cubit.changeObsecureText();
                        },
                        icon: Icon(cubit.obscureText
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    obscureText: cubit.obscureText),
                const SizedBox(
                  height: 33,
                ),
                state is LoadingToRegister
                    ? customCircleProgressIndicator()
                    : customButton(
                        width: 325,
                        height: 80,
                        child: const Text(
                          AppStrings.createAccount,
                          style: AppTextStyle.satoshiBold22,
                        ),
                        onTap: () {
                          if (cubit.registerFormKey.currentState!.validate()) {
                            cubit.createAccountWithEmailAndPassword();
                          }
                        },
                      ),
              ],
            ),
          );
        },
      ));
}
