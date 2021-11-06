// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_categories_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuCategoriesResponse extends MenuCategoriesResponse {
  @override
  final BuiltList<MenuCategoryData>? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$MenuCategoriesResponse(
          [void Function(MenuCategoriesResponseBuilder)? updates]) =>
      (new MenuCategoriesResponseBuilder()..update(updates)).build();

  _$MenuCategoriesResponse._({this.info, this.code, this.errorInfo})
      : super._();

  @override
  MenuCategoriesResponse rebuild(
          void Function(MenuCategoriesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuCategoriesResponseBuilder toBuilder() =>
      new MenuCategoriesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuCategoriesResponse &&
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
    return (newBuiltValueToStringHelper('MenuCategoriesResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class MenuCategoriesResponseBuilder
    implements Builder<MenuCategoriesResponse, MenuCategoriesResponseBuilder> {
  _$MenuCategoriesResponse? _$v;

  ListBuilder<MenuCategoryData>? _info;
  ListBuilder<MenuCategoryData> get info =>
      _$this._info ??= new ListBuilder<MenuCategoryData>();
  set info(ListBuilder<MenuCategoryData>? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  MenuCategoriesResponseBuilder() {
    MenuCategoriesResponse._defaults(this);
  }

  MenuCategoriesResponseBuilder get _$this {
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
  void replace(MenuCategoriesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuCategoriesResponse;
  }

  @override
  void update(void Function(MenuCategoriesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuCategoriesResponse build() {
    _$MenuCategoriesResponse _$result;
    try {
      _$result = _$v ??
          new _$MenuCategoriesResponse._(
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
            'MenuCategoriesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
