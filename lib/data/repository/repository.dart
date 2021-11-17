import 'package:localization/data/http_helper/iHttp_helper.dart';
import 'package:localization/data/prefs_helper/iPrefs_helper.dart';
import 'package:localization/localization/app_language.dart';
import 'package:localization/model/user_model.dart';
import 'iRepository.dart';

class Repository extends IRepository {
  IHttpHelper _iHttpHelper;
  IPrefsHelper _iPrefsHelper;

  Repository(this._iHttpHelper, this._iPrefsHelper);

  @override
  Future<int> getLangaue() async {
    return await _iPrefsHelper.getLanguage();
  }

  @override
  Future<void> setLanguage(int langkey) async {
    return await _iPrefsHelper.setLanguage(langkey);
  }

  @override
  Future<UserModel> login(
    String email,
    String password,
  ) async {
    final login = await _iHttpHelper.login(email, password);
    final save = await _iPrefsHelper.setIsLogin();
    return login;
  }

  @override
  Future<bool> getIsLogin() async {
    return await _iPrefsHelper.getIsLogin();
  }
}
