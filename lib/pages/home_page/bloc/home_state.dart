library home_state;

import 'package:built_value/built_value.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built <HomeState, HomeStateBuilder> {
  int get lang;

  HomeState._();

  factory HomeState([
    updates(HomeStateBuilder b),
  ]) =_$HomeState;

  factory HomeState.initail(){
    return HomeState((b) => b
    ..lang = 0 );
  }

}
