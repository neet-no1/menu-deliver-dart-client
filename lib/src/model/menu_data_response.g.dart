// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuDataResponse extends MenuDataResponse {
  @override
  final MenuData? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$MenuDataResponse(
          [void Function(MenuDataResponseBuilder)? updates]) =>
      (new MenuDataResponseBuilder()..update(updates)).build();

  _$MenuDataResponse._({this.info, this.code, this.errorInfo}) : super._();

  @override
  MenuDataResponse rebuild(void Function(MenuDataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuDataResponseBuilder toBuilder() =>
      new MenuDataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuDataResponse &&
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
    return (newBuiltValueToStringHelper('MenuDataResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class MenuDataResponseBuilder
    implements Builder<MenuDataResponse, MenuDataResponseBuilder> {
  _$MenuDataResponse? _$v;

  MenuDataBuilder? _info;
  MenuDataBuilder get info => _$this._info ??= new MenuDataBuilder();
  set info(MenuDataBuilder? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  MenuDataResponseBuilder() {
    MenuDataResponse._defaults(this);
  }

  MenuDataResponseBuilder get _$this {
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
  void replace(MenuDataResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuDataResponse;
  }

  @override
  void update(void Function(MenuDataResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuDataResponse build() {
    _$MenuDataResponse _$result;
    try {
      _$result = _$v ??
          new _$MenuDataResponse._(
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
            'MenuDataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
