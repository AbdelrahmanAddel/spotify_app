import 'package:dartz/dartz.dart';
import 'package:for_test/feature/sign_in/data/data_source/firebase_sign_in.dart';
import 'package:for_test/feature/sign_in/domain/repositry/sign_in_repositry.dart';
import 'package:for_test/service/service_locator.dart';

class SignInRepositryImplmentation extends SignInRepositry {
  @override
  Future<Either<String, String>> signIn(
      {required String email, required String password})async {
    return await sl<FirebaseSignIn>().signIn(email: email, password: password);
  }
}
