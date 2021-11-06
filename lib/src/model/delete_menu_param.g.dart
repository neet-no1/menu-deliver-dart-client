// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_menu_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMenuParam extends DeleteMenuParam {
  @override
  final int? id;

  factory _$DeleteMenuParam([void Function(DeleteMenuParamBuilder)? updates]) =>
      (new DeleteMenuParamBuilder()..update(updates)).build();

  _$DeleteMenuParam._({this.id}) : super._();

  @override
  DeleteMenuParam rebuild(void Function(DeleteMenuParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMenuParamBuilder toBuilder() =>
      new DeleteMenuParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMenuParam && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteMenuParam')..add('id', id))
        .toString();
  }
}

class DeleteMenuParamBuilder
    implements Builder<DeleteMenuParam, DeleteMenuParamBuilder> {
  _$DeleteMenuParam? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DeleteMenuParamBuilder() {
    DeleteMenuParam._defaults(this);
  }

  DeleteMenuParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMenuParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMenuParam;
  }

  @override
  void update(void Function(DeleteMenuParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteMenuParam build() {
    final _$result = _$v ?? new _$DeleteMenuParam._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
