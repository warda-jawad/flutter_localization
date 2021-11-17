library app_state;

import 'package:built_value/built_value.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  int get applang;
  bool get isLogin;

  AppState._();

  factory AppState([
    update(AppStateBuilder b),
  ]) = _$AppState;

  factory AppState.initail() {
    return AppState((b) => b
      ..applang = 0
      ..isLogin = false);
  }
}
