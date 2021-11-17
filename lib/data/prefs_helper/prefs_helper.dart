import 'package:shared_preferences/shared_preferences.dart';
import 'iPrefs_helper.dart';

const String keyy = "key";
const String IS_LOGIN = "login";

class PrefsHelper implements IPrefsHelper {
  @override
  Future<bool> getIsLogin() async {
    return (await getPrefs()).getBool(IS_LOGIN) == true ? true : false;
  }

  @override
  Future<void> setIsLogin() async {
    (await getPrefs()).setBool(IS_LOGIN, true);
   }
  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<int> getLanguage() async {
    return (await getPrefs()).getInt(keyy) ?? 0;
  }

  @override
  Future<void> setLanguage(int key) async {
    (await getPrefs()).setInt(keyy, key);
  }
}
