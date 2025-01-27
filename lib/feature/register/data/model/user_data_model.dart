// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserDataModel {
  String fullName;
  String email;
  UserDataModel({
    required this.fullName,
    required this.email,
  });
  static Map<String, dynamic> toJson(
      {required String fullName, required String email}) {
    return {'fullName': fullName, 'email': email};
  }
}
