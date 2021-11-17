library login_state;

import 'package:built_value/built_value.dart';
import 'package:localization/model/user_model.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  String get error;
  bool get isLoading;
  bool get success;
  bool get isLogin;
  UserModel? get user;

  LoginState._();

  factory LoginState([
    updates(LoginStateBuilder b),
  ]) =_$LoginState;

  factory LoginState.initail(){
    return LoginState((b) => b
    ..error =""
    ..isLoading=false
    ..success= false
      ..isLogin = false
      ..user= null
    );
  }
}
