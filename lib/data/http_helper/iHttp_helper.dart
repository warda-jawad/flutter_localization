
import 'package:localization/model/user_model.dart';

abstract class IHttpHelper{
  Future <UserModel>login(String email, String password);
}