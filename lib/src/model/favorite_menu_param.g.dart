// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_menu_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavoriteMenuParam extends FavoriteMenuParam {
  @override
  final int? id;
  @override
  final bool? added;

  factory _$FavoriteMenuParam(
          [void Function(FavoriteMenuParamBuilder)? updates]) =>
      (new FavoriteMenuParamBuilder()..update(updates)).build();

  _$FavoriteMenuParam._({this.id, this.added}) : super._();

  @override
  FavoriteMenuParam rebuild(void Function(FavoriteMenuParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteMenuParamBuilder toBuilder() =>
      new FavoriteMenuParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteMenuParam && id == other.id && added == other.added;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), added.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteMenuParam')
          ..add('id', id)
          ..add('added', added))
        .toString();
  }
}

class FavoriteMenuParamBuilder
    implements Builder<FavoriteMenuParam, FavoriteMenuParamBuilder> {
  _$FavoriteMenuParam? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _added;
  bool? get added => _$this._added;
  set added(bool? added) => _$this._added = added;

  FavoriteMenuParamBuilder() {
    FavoriteMenuParam._defaults(this);
  }

  FavoriteMenuParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _added = $v.added;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteMenuParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteMenuParam;
  }

  @override
  void update(void Function(FavoriteMenuParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteMenuParam build() {
    final _$result = _$v ?? new _$FavoriteMenuParam._(id: id, added: added);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
