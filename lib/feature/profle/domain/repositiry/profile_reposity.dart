import 'package:dartz/dartz.dart';

import '../../data/model/profile_model.dart';

abstract class ProfileReposity {
  Future<Either<ProfileModel, String>> getProfileData();
}
