import 'package:spotify_app/core/util/app_string.dart';

class FirebaseModel {
  String email;
  String ?fullName;
  FirebaseModel({required this.email ,this.fullName});

Map<String,dynamic>toJson(){
    return {
      FireBaseString.fullName:fullName,
      FireBaseString.email:email
    };
  }
}