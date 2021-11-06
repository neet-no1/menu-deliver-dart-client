// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_auth_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAuthResponse extends AccountAuthResponse {
  @override
  final bool? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$AccountAuthResponse(
          [void Function(AccountAuthResponseBuilder)? updates]) =>
      (new AccountAuthResponseBuilder()..update(updates)).build();

  _$AccountAuthResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  AccountAuthResponse rebuild(
          void Function(AccountAuthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAuthResponseBuilder toBuilder() =>
      new AccountAuthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAuthResponse &&
        info == other.info &&
        code == other.code &&
        errorInfo == other.errorInfo;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, info.hashCode), code.hashCode), errorInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountAuthResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class AccountAuthResponseBuilder
    implements Builder<AccountAuthResponse, AccountAuthResponseBuilder> {
  _$AccountAuthResponse? _$v;

  bool? _info;
  bool? get info => _$this._info;
  set info(bool? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  AccountAuthResponseBuilder() {
    AccountAuthResponse._defaults(this);
  }

  AccountAuthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _info = $v.info;
      _code = $v.code;
      _errorInfo = $v.errorInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAuthResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAuthResponse;
  }

  @override
  void update(void Function(AccountAuthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountAuthResponse build() {
    _$AccountAuthResponse _$result;
    try {
      _$result = _$v ??
          new _$AccountAuthResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountAuthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
