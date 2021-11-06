// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_user_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FollowUserData extends FollowUserData {
  @override
  final int? id;
  @override
  final String? imgPath;
  @override
  final String? name;

  factory _$FollowUserData([void Function(FollowUserDataBuilder)? updates]) =>
      (new FollowUserDataBuilder()..update(updates)).build();

  _$FollowUserData._({this.id, this.imgPath, this.name}) : super._();

  @override
  FollowUserData rebuild(void Function(FollowUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowUserDataBuilder toBuilder() =>
      new FollowUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowUserData &&
        id == other.id &&
        imgPath == other.imgPath &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), imgPath.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FollowUserData')
          ..add('id', id)
          ..add('imgPath', imgPath)
          ..add('name', name))
        .toString();
  }
}

class FollowUserDataBuilder
    implements Builder<FollowUserData, FollowUserDataBuilder> {
  _$FollowUserData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imgPath;
  String? get imgPath => _$this._imgPath;
  set imgPath(String? imgPath) => _$this._imgPath = imgPath;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FollowUserDataBuilder() {
    FollowUserData._defaults(this);
  }

  FollowUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _imgPath = $v.imgPath;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FollowUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FollowUserData;
  }

  @override
  void update(void Function(FollowUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FollowUserData build() {
    final _$result =
        _$v ?? new _$FollowUserData._(id: id, imgPath: imgPath, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
