import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:for_test/constants/firebase_strings.dart';

import '../model/profile_model.dart';

abstract class FirebaseGetProfle {
  Future<Either<ProfileModel, String>> getProfileData();
}

class FirebaseGetProfleImple extends FirebaseGetProfle {
  @override
  Future<Either<ProfileModel, String>> getProfileData() async {
    try {
      final profileData = await FirebaseFirestore.instance
          .collection(FirebaseStrings.users)
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      return Left(ProfileModel.fromJson(profileData.data()!));
    } on Exception catch (e) {
      return Right(e.toString());
    }
  }
}
