import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:for_test/feature/sign_in/domain/usecase/sign_in_usecase.dart';
import 'package:for_test/service/service_locator.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());
  final formKey = GlobalKey<FormState>();
  bool obscureText = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void changeTextState() {
    obscureText = !obscureText;
    emit(ChangeTextState());
  }

  signInWithEmailAndPassword() async {
    emit(LoadingToSignIn());
    final repsponce = await sl<SignInUsecase>()
        .call(email: emailController.text, password: passwordController.text);
    repsponce.fold((success) {
      emit(SignInSuccessful(successMessage: success));
    }, (failer) => emit(FailerToSignIn(errorMessage: failer)));
  }
}
