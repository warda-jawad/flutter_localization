// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final int applang;
  @override
  final bool isLogin;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.applang, required this.isLogin}) : super._() {
    BuiltValueNullFieldError.checkNotNull(applang, 'AppState', 'applang');
    BuiltValueNullFieldError.checkNotNull(isLogin, 'AppState', 'isLogin');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        applang == other.applang &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, applang.hashCode), isLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('applang', applang)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  int? _applang;
  int? get applang => _$this._applang;
  set applang(int? applang) => _$this._applang = applang;

  bool? _isLogin;
  bool? get isLogin => _$this._isLogin;
  set isLogin(bool? isLogin) => _$this._isLogin = isLogin;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applang = $v.applang;
      _isLogin = $v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    final _$result = _$v ??
        new _$AppState._(
            applang: BuiltValueNullFieldError.checkNotNull(
                applang, 'AppState', 'applang'),
            isLogin: BuiltValueNullFieldError.checkNotNull(
                isLogin, 'AppState', 'isLogin'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
