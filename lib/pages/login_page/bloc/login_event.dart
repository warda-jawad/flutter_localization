library login_event;

import 'package:built_value/built_value.dart';
import 'package:localization/pages/home_page/bloc/home_event.dart';

part 'login_event.g.dart';

abstract class LoginEvent{}

abstract class ClearError extends LoginEvent
    implements Built<ClearError, ClearErrorBuilder>{
  ClearError._();
  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

abstract class Login extends LoginEvent
    implements Built<Login, LoginBuilder>{
   String get email;
   String get password;

   Login._();

   factory Login([
     updates(LoginBuilder b),
   ]) = _$Login;
}