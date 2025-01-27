import 'package:dartz/dartz.dart';

abstract class RegisterRepositry {
  Future<Either> register(
      {required String emailAddress, required String password});
  Future<void> saveUserData({required String fullName, required String email});
}
