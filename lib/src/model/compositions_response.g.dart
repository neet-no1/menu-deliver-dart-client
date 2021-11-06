// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compositions_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompositionsResponse extends CompositionsResponse {
  @override
  final BuiltList<CompositionData>? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$CompositionsResponse(
          [void Function(CompositionsResponseBuilder)? updates]) =>
      (new CompositionsResponseBuilder()..update(updates)).build();

  _$CompositionsResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  CompositionsResponse rebuild(
          void Function(CompositionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompositionsResponseBuilder toBuilder() =>
      new CompositionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompositionsResponse &&
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
    return (newBuiltValueToStringHelper('CompositionsResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class CompositionsResponseBuilder
    implements Builder<CompositionsResponse, CompositionsResponseBuilder> {
  _$CompositionsResponse? _$v;

  ListBuilder<CompositionData>? _info;
  ListBuilder<CompositionData> get info =>
      _$this._info ??= new ListBuilder<CompositionData>();
  set info(ListBuilder<CompositionData>? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  CompositionsResponseBuilder() {
    CompositionsResponse._defaults(this);
  }

  CompositionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _info = $v.info?.toBuilder();
      _code = $v.code;
      _errorInfo = $v.errorInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompositionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompositionsResponse;
  }

  @override
  void update(void Function(CompositionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompositionsResponse build() {
    _$CompositionsResponse _$result;
    try {
      _$result = _$v ??
          new _$CompositionsResponse._(
              info: _info?.build(), code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();

        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompositionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
