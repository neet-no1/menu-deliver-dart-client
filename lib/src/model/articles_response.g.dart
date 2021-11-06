// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticlesResponse extends ArticlesResponse {
  @override
  final JsonObject? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$ArticlesResponse(
          [void Function(ArticlesResponseBuilder)? updates]) =>
      (new ArticlesResponseBuilder()..update(updates)).build();

  _$ArticlesResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  ArticlesResponse rebuild(void Function(ArticlesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesResponseBuilder toBuilder() =>
      new ArticlesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticlesResponse &&
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
    return (newBuiltValueToStringHelper('ArticlesResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class ArticlesResponseBuilder
    implements Builder<ArticlesResponse, ArticlesResponseBuilder> {
  _$ArticlesResponse? _$v;

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

  ArticlesResponseBuilder() {
    ArticlesResponse._defaults(this);
  }

  ArticlesResponseBuilder get _$this {
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
  void replace(ArticlesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticlesResponse;
  }

  @override
  void update(void Function(ArticlesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticlesResponse build() {
    _$ArticlesResponse _$result;
    try {
      _$result = _$v ??
          new _$ArticlesResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ArticlesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
