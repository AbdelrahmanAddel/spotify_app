import 'package:dartz/dartz.dart';
import 'package:for_test/feature/register/data/data_source/firebase_register.dart';
import 'package:for_test/feature/register/domain/repositry/register_repositry.dart';
import 'package:for_test/service/service_locator.dart';

class RegisterRepositryImplmentation extends RegisterRepositry {
  @override
  Future<Either> register(
      {required String emailAddress, required String password}) async {
    return await sl<FirebaseRegister>()
        .register(emailAddress: emailAddress, password: password);
  }

  @override
  Future<void> saveUserData(
      {required String fullName, required String email}) async {
    return await sl<FirebaseRegister>()
        .saveUserData(fullName: fullName, email: email);
  }
}
