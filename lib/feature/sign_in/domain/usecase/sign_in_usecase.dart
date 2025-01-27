import 'package:dartz/dartz.dart';
import 'package:for_test/feature/sign_in/domain/repositry/sign_in_repositry.dart';
import 'package:for_test/service/service_locator.dart';

class SignInUsecase {
  Future<Either<String, String>> call(
      {required String email, required String password}) {
    return sl<SignInRepositry>().signIn(email: email, password: password);
  }
}
