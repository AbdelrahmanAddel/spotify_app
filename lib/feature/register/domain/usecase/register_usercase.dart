import 'package:dartz/dartz.dart';
import 'package:for_test/service/service_locator.dart';

import '../repositry/register_repositry.dart';

class RegisterUsecase {
  Future<Either> call(
      {required String emailAddress, required String password}) async {
    return await sl<RegisterRepositry>()
        .register(emailAddress: emailAddress, password: password);
  }
}
