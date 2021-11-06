// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePasswordParam extends UpdatePasswordParam {
  @override
  final String? currentPassword;
  @override
  final String? newPassword;
  @override
  final String? newPasswordConfirm;

  factory _$UpdatePasswordParam(
          [void Function(UpdatePasswordParamBuilder)? updates]) =>
      (new UpdatePasswordParamBuilder()..update(updates)).build();

  _$UpdatePasswordParam._(
      {this.currentPassword, this.newPassword, this.newPasswordConfirm})
      : super._();

  @override
  UpdatePasswordParam rebuild(
          void Function(UpdatePasswordParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePasswordParamBuilder toBuilder() =>
      new UpdatePasswordParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePasswordParam &&
        currentPassword == other.currentPassword &&
        newPassword == other.newPassword &&
        newPasswordConfirm == other.newPasswordConfirm;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, currentPassword.hashCode), newPassword.hashCode),
        newPasswordConfirm.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdatePasswordParam')
          ..add('currentPassword', currentPassword)
          ..add('newPassword', newPassword)
          ..add('newPasswordConfirm', newPasswordConfirm))
        .toString();
  }
}

class UpdatePasswordParamBuilder
    implements Builder<UpdatePasswordParam, UpdatePasswordParamBuilder> {
  _$UpdatePasswordParam? _$v;

  String? _currentPassword;
  String? get currentPassword => _$this._currentPassword;
  set currentPassword(String? currentPassword) =>
      _$this._currentPassword = currentPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _newPasswordConfirm;
  String? get newPasswordConfirm => _$this._newPasswordConfirm;
  set newPasswordConfirm(String? newPasswordConfirm) =>
      _$this._newPasswordConfirm = newPasswordConfirm;

  UpdatePasswordParamBuilder() {
    UpdatePasswordParam._defaults(this);
  }

  UpdatePasswordParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPassword = $v.currentPassword;
      _newPassword = $v.newPassword;
      _newPasswordConfirm = $v.newPasswordConfirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePasswordParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePasswordParam;
  }

  @override
  void update(void Function(UpdatePasswordParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatePasswordParam build() {
    final _$result = _$v ??
        new _$UpdatePasswordParam._(
            currentPassword: currentPassword,
            newPassword: newPassword,
            newPasswordConfirm: newPasswordConfirm);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
