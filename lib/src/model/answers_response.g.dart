// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswersResponse extends AnswersResponse {
  @override
  final JsonObject? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$AnswersResponse([void Function(AnswersResponseBuilder)? updates]) =>
      (new AnswersResponseBuilder()..update(updates)).build();

  _$AnswersResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  AnswersResponse rebuild(void Function(AnswersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswersResponseBuilder toBuilder() =>
      new AnswersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswersResponse &&
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
    return (newBuiltValueToStringHelper('AnswersResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class AnswersResponseBuilder
    implements Builder<AnswersResponse, AnswersResponseBuilder> {
  _$AnswersResponse? _$v;

  JsonObject? _info;
  JsonObject? get info => _$this._info;
  set info(JsonObject? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  AnswersResponseBuilder() {
    AnswersResponse._defaults(this);
  }

  AnswersResponseBuilder get _$this {
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
  void replace(AnswersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswersResponse;
  }

  @override
  void update(void Function(AnswersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnswersResponse build() {
    _$AnswersResponse _$result;
    try {
      _$result = _$v ??
          new _$AnswersResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnswersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
