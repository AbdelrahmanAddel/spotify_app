part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class ChangeTextState extends SigninState {}

final class LoadingToSignIn extends SigninState {}

final class SignInSuccessful extends SigninState {
  final String successMessage;

  SignInSuccessful({required this.successMessage});
}

final class FailerToSignIn extends SigninState {
  final String errorMessage;

  FailerToSignIn({required this.errorMessage});
}
