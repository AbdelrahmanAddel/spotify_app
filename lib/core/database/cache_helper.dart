import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  late SharedPreferences sharedPreferences;

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> setBool({required String key, required bool value}) async {
    return await sharedPreferences.setBool(key, value);
  }

  bool? getBool({required String key}) {
    return sharedPreferences.getBool(key);
  }

//! SAVE DATA
  Future<dynamic> saveData(
      {required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }

//! GET DATA
  dynamic getData({required String key}) async {
    return sharedPreferences.get(key);
  }
}
