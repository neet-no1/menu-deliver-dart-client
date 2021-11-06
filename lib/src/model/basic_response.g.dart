// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BasicResponse extends BasicResponse {
  @override
  final int? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$BasicResponse([void Function(BasicResponseBuilder)? updates]) =>
      (new BasicResponseBuilder()..update(updates)).build();

  _$BasicResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  BasicResponse rebuild(void Function(BasicResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicResponseBuilder toBuilder() => new BasicResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasicResponse &&
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
    return (newBuiltValueToStringHelper('BasicResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class BasicResponseBuilder
    implements Builder<BasicResponse, BasicResponseBuilder> {
  _$BasicResponse? _$v;

  int? _info;
  int? get info => _$this._info;
  set info(int? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  BasicResponseBuilder() {
    BasicResponse._defaults(this);
  }

  BasicResponseBuilder get _$this {
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
  void replace(BasicResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BasicResponse;
  }

  @override
  void update(void Function(BasicResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasicResponse build() {
    _$BasicResponse _$result;
    try {
      _$result = _$v ??
          new _$BasicResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BasicResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
