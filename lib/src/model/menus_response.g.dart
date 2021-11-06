// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menus_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenusResponse extends MenusResponse {
  @override
  final JsonObject? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$MenusResponse([void Function(MenusResponseBuilder)? updates]) =>
      (new MenusResponseBuilder()..update(updates)).build();

  _$MenusResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  MenusResponse rebuild(void Function(MenusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenusResponseBuilder toBuilder() => new MenusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenusResponse &&
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
    return (newBuiltValueToStringHelper('MenusResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class MenusResponseBuilder
    implements Builder<MenusResponse, MenusResponseBuilder> {
  _$MenusResponse? _$v;

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

  MenusResponseBuilder() {
    MenusResponse._defaults(this);
  }

  MenusResponseBuilder get _$this {
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
  void replace(MenusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenusResponse;
  }

  @override
  void update(void Function(MenusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenusResponse build() {
    _$MenusResponse _$result;
    try {
      _$result = _$v ??
          new _$MenusResponse._(
              info: info, code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MenusResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
