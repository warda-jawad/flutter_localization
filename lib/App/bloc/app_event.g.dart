// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LangEvent extends LangEvent {
  factory _$LangEvent([void Function(LangEventBuilder)? updates]) =>
      (new LangEventBuilder()..update(updates)).build();

  _$LangEvent._() : super._();

  @override
  LangEvent rebuild(void Function(LangEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LangEventBuilder toBuilder() => new LangEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LangEvent;
  }

  @override
  int get hashCode {
    return 1055696780;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LangEvent').toString();
  }
}

class LangEventBuilder implements Builder<LangEvent, LangEventBuilder> {
  _$LangEvent? _$v;

  LangEventBuilder();

  @override
  void replace(LangEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LangEvent;
  }

  @override
  void update(void Function(LangEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LangEvent build() {
    final _$result = _$v ?? new _$LangEvent._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
