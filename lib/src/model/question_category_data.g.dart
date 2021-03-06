// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_category_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionCategoryData extends QuestionCategoryData {
  @override
  final int? id;
  @override
  final String? name;

  factory _$QuestionCategoryData(
          [void Function(QuestionCategoryDataBuilder)? updates]) =>
      (new QuestionCategoryDataBuilder()..update(updates)).build();

  _$QuestionCategoryData._({this.id, this.name}) : super._();

  @override
  QuestionCategoryData rebuild(
          void Function(QuestionCategoryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionCategoryDataBuilder toBuilder() =>
      new QuestionCategoryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionCategoryData &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuestionCategoryData')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class QuestionCategoryDataBuilder
    implements Builder<QuestionCategoryData, QuestionCategoryDataBuilder> {
  _$QuestionCategoryData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  QuestionCategoryDataBuilder() {
    QuestionCategoryData._defaults(this);
  }

  QuestionCategoryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionCategoryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionCategoryData;
  }

  @override
  void update(void Function(QuestionCategoryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionCategoryData build() {
    final _$result = _$v ?? new _$QuestionCategoryData._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
