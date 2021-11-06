// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regist_account_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistAccountParam extends RegistAccountParam {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? passwordConfirm;

  factory _$RegistAccountParam(
          [void Function(RegistAccountParamBuilder)? updates]) =>
      (new RegistAccountParamBuilder()..update(updates)).build();

  _$RegistAccountParam._({this.email, this.password, this.passwordConfirm})
      : super._();

  @override
  RegistAccountParam rebuild(
          void Function(RegistAccountParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistAccountParamBuilder toBuilder() =>
      new RegistAccountParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistAccountParam &&
        email == other.email &&
        password == other.password &&
        passwordConfirm == other.passwordConfirm;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, email.hashCode), password.hashCode),
        passwordConfirm.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistAccountParam')
          ..add('email', email)
          ..add('password', password)
          ..add('passwordConfirm', passwordConfirm))
        .toString();
  }
}

class RegistAccountParamBuilder
    implements Builder<RegistAccountParam, RegistAccountParamBuilder> {
  _$RegistAccountParam? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordConfirm;
  String? get passwordConfirm => _$this._passwordConfirm;
  set passwordConfirm(String? passwordConfirm) =>
      _$this._passwordConfirm = passwordConfirm;

  RegistAccountParamBuilder() {
    RegistAccountParam._defaults(this);
  }

  RegistAccountParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _passwordConfirm = $v.passwordConfirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistAccountParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistAccountParam;
  }

  @override
  void update(void Function(RegistAccountParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistAccountParam build() {
    final _$result = _$v ??
        new _$RegistAccountParam._(
            email: email, password: password, passwordConfirm: passwordConfirm);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
