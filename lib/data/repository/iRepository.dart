import 'package:localization/model/user_model.dart';

abstract class IRepository {
  Future<UserModel> login(
    String email,
    String password,
  );
  Future<bool> getIsLogin();
  Future<int> getLangaue();
  Future<void> setLanguage(int langkey);
}
