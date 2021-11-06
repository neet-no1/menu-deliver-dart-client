// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionsResponse extends QuestionsResponse {
  @override
  final JsonObject? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$QuestionsResponse(
          [void Function(QuestionsResponseBuilder)? updates]) =>
      (new QuestionsResponseBuilder()..update(updates)).build();

  _$QuestionsResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  QuestionsResponse rebuild(void Function(QuestionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsResponseBuilder toBuilder() =>
      new QuestionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsResponse &&
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
    return (newBuiltValueToStringHelper('QuestionsResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class QuestionsResponseBuilder
    implements Builder<QuestionsResponse, QuestionsResponseBuilder> {
  _$QuestionsResponse? _$v;

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

  QuestionsResponseBuilder() {
    QuestionsResponse._defaults(this);
  }

  QuestionsResponseBuilder get _$this {
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
  void replace(QuestionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsResponse;
  }

  @override
  void update(void Function(QuestionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionsResponse build() {
    _$QuestionsResponse _$result;
    try {
      _$result = _$v ??
          new _$QuestionsResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'QuestionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
