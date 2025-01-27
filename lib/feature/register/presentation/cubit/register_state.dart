part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class ChangeObsecuteTextSuccess extends RegisterState {}

final class LoadingToRegister extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final String successMessage;

  RegisterSuccess({required this.successMessage});
}

final class FailerToRegister extends RegisterState {
  final String failerMessage;

  FailerToRegister({required this.failerMessage});
}
