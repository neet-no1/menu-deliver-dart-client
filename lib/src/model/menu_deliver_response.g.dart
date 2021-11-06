// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_deliver_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuDeliverResponse extends MenuDeliverResponse {
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$MenuDeliverResponse(
          [void Function(MenuDeliverResponseBuilder)? updates]) =>
      (new MenuDeliverResponseBuilder()..update(updates)).build();

  _$MenuDeliverResponse._({this.code, this.errorInfo}) : super._();

  @override
  MenuDeliverResponse rebuild(
          void Function(MenuDeliverResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuDeliverResponseBuilder toBuilder() =>
      new MenuDeliverResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuDeliverResponse &&
        code == other.code &&
        errorInfo == other.errorInfo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), errorInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuDeliverResponse')
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class MenuDeliverResponseBuilder
    implements Builder<MenuDeliverResponse, MenuDeliverResponseBuilder> {
  _$MenuDeliverResponse? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  MenuDeliverResponseBuilder() {
    MenuDeliverResponse._defaults(this);
  }

  MenuDeliverResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _errorInfo = $v.errorInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuDeliverResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuDeliverResponse;
  }

  @override
  void update(void Function(MenuDeliverResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuDeliverResponse build() {
    _$MenuDeliverResponse _$result;
    try {
      _$result = _$v ??
          new _$MenuDeliverResponse._(
              code: code, errorInfo: _errorInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorInfo';
        _errorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MenuDeliverResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
