library app_event;

import 'package:built_value/built_value.dart';

part 'app_event.g.dart';

abstract class AppEvent {}

abstract class LangEvent extends AppEvent
    implements Built<LangEvent, LangEventBuilder> {
  LangEvent._();

  factory LangEvent([
    update(LangEventBuilder b),
  ]) = _$LangEvent;
}
