import 'package:for_test/feature/register/domain/repositry/register_repositry.dart';
import 'package:for_test/service/service_locator.dart';

class SaveUserDataUsecase {
  Future<void> call({required String fullName, required String email}) {
    return sl<RegisterRepositry>()
        .saveUserData(fullName: fullName, email: email);
  }
}
