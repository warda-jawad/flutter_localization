// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeLanguage extends ChangeLanguage {
  @override
  final int langkey;

  factory _$ChangeLanguage([void Function(ChangeLanguageBuilder)? updates]) =>
      (new ChangeLanguageBuilder()..update(updates)).build();

  _$ChangeLanguage._({required this.langkey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(langkey, 'ChangeLanguage', 'langkey');
  }

  @override
  ChangeLanguage rebuild(void Function(ChangeLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeLanguageBuilder toBuilder() =>
      new ChangeLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeLanguage && langkey == other.langkey;
  }

  @override
  int get hashCode {
    return $jf($jc(0, langkey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeLanguage')
          ..add('langkey', langkey))
        .toString();
  }
}

class ChangeLanguageBuilder
    implements Builder<ChangeLanguage, ChangeLanguageBuilder> {
  _$ChangeLanguage? _$v;

  int? _langkey;
  int? get langkey => _$this._langkey;
  set langkey(int? langkey) => _$this._langkey = langkey;

  ChangeLanguageBuilder();

  ChangeLanguageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _langkey = $v.langkey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeLanguage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeLanguage;
  }

  @override
  void update(void Function(ChangeLanguageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeLanguage build() {
    final _$result = _$v ??
        new _$ChangeLanguage._(
            langkey: BuiltValueNullFieldError.checkNotNull(
                langkey, 'ChangeLanguage', 'langkey'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
