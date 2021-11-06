// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_categories_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionCategoriesResponse extends QuestionCategoriesResponse {
  @override
  final BuiltList<QuestionCategoryData>? info;
  @override
  final int? code;
  @override
  final ErrorInfo? errorInfo;

  factory _$QuestionCategoriesResponse(
          [void Function(QuestionCategoriesResponseBuilder)? updates]) =>
      (new QuestionCategoriesResponseBuilder()..update(updates)).build();

  _$QuestionCategoriesResponse._({this.info, this.code, this.errorInfo})
      : super._();

  @override
  QuestionCategoriesResponse rebuild(
          void Function(QuestionCategoriesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionCategoriesResponseBuilder toBuilder() =>
      new QuestionCategoriesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionCategoriesResponse &&
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
    return (newBuiltValueToStringHelper('QuestionCategoriesResponse')
          ..add('info', info)
          ..add('code', code)
          ..add('errorInfo', errorInfo))
        .toString();
  }
}

class QuestionCategoriesResponseBuilder
    implements
        Builder<QuestionCategoriesResponse, QuestionCategoriesResponseBuilder> {
  _$QuestionCategoriesResponse? _$v;

  ListBuilder<QuestionCategoryData>? _info;
  ListBuilder<QuestionCategoryData> get info =>
      _$this._info ??= new ListBuilder<QuestionCategoryData>();
  set info(ListBuilder<QuestionCategoryData>? info) => _$this._info = info;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ErrorInfoBuilder? _errorInfo;
  ErrorInfoBuilder get errorInfo =>
      _$this._errorInfo ??= new ErrorInfoBuilder();
  set errorInfo(ErrorInfoBuilder? errorInfo) => _$this._errorInfo = errorInfo;

  QuestionCategoriesResponseBuilder() {
    QuestionCategoriesResponse._defaults(this);
  }

  QuestionCategoriesResponseBuilder get _$this {
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
  void replace(QuestionCategoriesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionCategoriesResponse;
  }

  @override
  void update(void Function(QuestionCategoriesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionCategoriesResponse build() {
    _$QuestionCategoriesResponse _$result;
    try {
      _$result = _$v ??
          new _$QuestionCategoriesResponse._(
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
            'QuestionCategoriesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
