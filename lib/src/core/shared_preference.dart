import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static late SharedPreferences sharedPreferences;

  static initPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static getData({required String key}) {
    return sharedPreferences.get(key);
  }

  static setData({required String key, required String value}) async {
    await sharedPreferences.setString(key, value);
  }
}
