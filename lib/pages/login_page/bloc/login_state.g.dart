// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool success;
  @override
  final bool isLogin;
  @override
  final UserModel? user;

  factory _$LoginState([void Function(LoginStateBuilder)? updates]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._(
      {required this.error,
      required this.isLoading,
      required this.success,
      required this.isLogin,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'LoginState', 'error');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'LoginState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(success, 'LoginState', 'success');
    BuiltValueNullFieldError.checkNotNull(isLogin, 'LoginState', 'isLogin');
  }

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        isLogin == other.isLogin &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, error.hashCode), isLoading.hashCode),
                success.hashCode),
            isLogin.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('isLogin', isLogin)
          ..add('user', user))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _isLogin;
  bool? get isLogin => _$this._isLogin;
  set isLogin(bool? isLogin) => _$this._isLogin = isLogin;

  UserModel? _user;
  UserModel? get user => _$this._user;
  set user(UserModel? user) => _$this._user = user;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _isLogin = $v.isLogin;
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    final _$result = _$v ??
        new _$LoginState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'LoginState', 'error'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'LoginState', 'isLoading'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, 'LoginState', 'success'),
            isLogin: BuiltValueNullFieldError.checkNotNull(
                isLogin, 'LoginState', 'isLogin'),
            user: user);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
