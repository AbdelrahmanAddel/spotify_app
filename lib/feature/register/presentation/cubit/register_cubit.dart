import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:for_test/feature/register/domain/usecase/save_user_data_usecase.dart';
import 'package:for_test/service/service_locator.dart';
import 'package:meta/meta.dart';

import '../../domain/usecase/register_usercase.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  bool obscureText = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();
  void changeObsecureText() {
    obscureText = !obscureText;
    emit(ChangeObsecuteTextSuccess());
  }

  void createAccountWithEmailAndPassword() async {
    try {
      emit(LoadingToRegister());
      final responce = await sl<RegisterUsecase>().call(
          emailAddress: emailController.text,
          password: passwordController.text);

      responce.fold((success) async {
        await saveUserData();

        emit(RegisterSuccess(successMessage: 'success'));
      }, (failer) => emit(FailerToRegister(failerMessage: failer)));
    } on Exception catch (error) {
      emit(FailerToRegister(failerMessage: error.toString()));
    }
  }

  Future<void> saveUserData() async {
    await sl<SaveUserDataUsecase>()
        .call(email: emailController.text, fullName: fullNameController.text);
  }
}
