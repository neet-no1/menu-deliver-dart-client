// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_article_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteArticleParam extends DeleteArticleParam {
  @override
  final int? id;

  factory _$DeleteArticleParam(
          [void Function(DeleteArticleParamBuilder)? updates]) =>
      (new DeleteArticleParamBuilder()..update(updates)).build();

  _$DeleteArticleParam._({this.id}) : super._();

  @override
  DeleteArticleParam rebuild(
          void Function(DeleteArticleParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteArticleParamBuilder toBuilder() =>
      new DeleteArticleParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteArticleParam && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteArticleParam')..add('id', id))
        .toString();
  }
}

class DeleteArticleParamBuilder
    implements Builder<DeleteArticleParam, DeleteArticleParamBuilder> {
  _$DeleteArticleParam? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DeleteArticleParamBuilder() {
    DeleteArticleParam._defaults(this);
  }

  DeleteArticleParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteArticleParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteArticleParam;
  }

  @override
  void update(void Function(DeleteArticleParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteArticleParam build() {
    final _$result = _$v ?? new _$DeleteArticleParam._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
