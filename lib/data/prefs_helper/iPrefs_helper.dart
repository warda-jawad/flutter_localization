import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();

  Future<bool> getIsLogin();

  Future<void> setIsLogin();

  Future<int> getLanguage();

  Future<void> setLanguage(int key);
}
