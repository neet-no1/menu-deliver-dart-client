// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordResetParam extends PasswordResetParam {
  @override
  final String? email;

  factory _$PasswordResetParam(
          [void Function(PasswordResetParamBuilder)? updates]) =>
      (new PasswordResetParamBuilder()..update(updates)).build();

  _$PasswordResetParam._({this.email}) : super._();

  @override
  PasswordResetParam rebuild(
          void Function(PasswordResetParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordResetParamBuilder toBuilder() =>
      new PasswordResetParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordResetParam && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PasswordResetParam')
          ..add('email', email))
        .toString();
  }
}

class PasswordResetParamBuilder
    implements Builder<PasswordResetParam, PasswordResetParamBuilder> {
  _$PasswordResetParam? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  PasswordResetParamBuilder() {
    PasswordResetParam._defaults(this);
  }

  PasswordResetParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordResetParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordResetParam;
  }

  @override
  void update(void Function(PasswordResetParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PasswordResetParam build() {
    final _$result = _$v ?? new _$PasswordResetParam._(email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
