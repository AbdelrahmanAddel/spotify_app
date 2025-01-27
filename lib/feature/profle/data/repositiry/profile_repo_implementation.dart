import 'package:dartz/dartz.dart';
import 'package:for_test/feature/profle/data/model/profile_model.dart';
import 'package:for_test/feature/profle/domain/repositiry/profile_reposity.dart';

import '../../../../service/service_locator.dart';
import '../data_source/firebase_get_profle.dart';

class ProfileRepoImplementation extends ProfileReposity {
  @override
  Future<Either<ProfileModel, String>> getProfileData() {
    return sl<FirebaseGetProfle>().getProfileData();
  }
}
