import 'package:dartz/dartz.dart';
import 'package:for_test/feature/profle/domain/repositiry/profile_reposity.dart';
import 'package:for_test/service/service_locator.dart';

import '../../data/model/profile_model.dart';

class ProfileUsecase {
  Future<Either<ProfileModel, String>> call() {
    return sl<ProfileReposity>().getProfileData();
  }
}
