import 'package:dartz/dartz.dart';

abstract class SignInRepositry {
  Future<Either<String, String>> signIn(
      {required String email, required String password});
}
