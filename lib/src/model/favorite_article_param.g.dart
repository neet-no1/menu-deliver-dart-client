// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_article_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavoriteArticleParam extends FavoriteArticleParam {
  @override
  final int? id;
  @override
  final bool? added;

  factory _$FavoriteArticleParam(
          [void Function(FavoriteArticleParamBuilder)? updates]) =>
      (new FavoriteArticleParamBuilder()..update(updates)).build();

  _$FavoriteArticleParam._({this.id, this.added}) : super._();

  @override
  FavoriteArticleParam rebuild(
          void Function(FavoriteArticleParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteArticleParamBuilder toBuilder() =>
      new FavoriteArticleParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteArticleParam &&
        id == other.id &&
        added == other.added;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), added.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteArticleParam')
          ..add('id', id)
          ..add('added', added))
        .toString();
  }
}

class FavoriteArticleParamBuilder
    implements Builder<FavoriteArticleParam, FavoriteArticleParamBuilder> {
  _$FavoriteArticleParam? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _added;
  bool? get added => _$this._added;
  set added(bool? added) => _$this._added = added;

  FavoriteArticleParamBuilder() {
    FavoriteArticleParam._defaults(this);
  }

  FavoriteArticleParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _added = $v.added;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteArticleParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteArticleParam;
  }

  @override
  void update(void Function(FavoriteArticleParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteArticleParam build() {
    final _$result = _$v ?? new _$FavoriteArticleParam._(id: id, added: added);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
