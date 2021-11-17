library home_event;

import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent{}

abstract class ChangeLanguage extends HomeEvent
 implements Built<ChangeLanguage, ChangeLanguageBuilder>{
   int  get langkey;
  ChangeLanguage._();
  factory ChangeLanguage([
    updates(ChangeLanguageBuilder b),
  ])= _$ChangeLanguage;
}