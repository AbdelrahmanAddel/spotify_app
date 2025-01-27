// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:for_test/core/constants/firebase_strings.dart';

class ProfileModel {
  String fullName;
  String email;
  ProfileModel({
    required this.fullName,
    required this.email,
  });
  factory ProfileModel.fromJson(Map<String, dynamic> jsonData) {
    return ProfileModel(
        fullName: jsonData[FirebaseStrings.fullName],
        email: jsonData[FirebaseStrings.email]);
  }
}
