// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_user_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FollowUserParam extends FollowUserParam {
  @override
  final int? userId;

  factory _$FollowUserParam([void Function(FollowUserParamBuilder)? updates]) =>
      (new FollowUserParamBuilder()..update(updates)).build();

  _$FollowUserParam._({this.userId}) : super._();

  @override
  FollowUserParam rebuild(void Function(FollowUserParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowUserParamBuilder toBuilder() =>
      new FollowUserParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowUserParam && userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FollowUserParam')
          ..add('userId', userId))
        .toString();
  }
}

class FollowUserParamBuilder
    implements Builder<FollowUserParam, FollowUserParamBuilder> {
  _$FollowUserParam? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  FollowUserParamBuilder() {
    FollowUserParam._defaults(this);
  }

  FollowUserParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FollowUserParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FollowUserParam;
  }

  @override
  void update(void Function(FollowUserParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FollowUserParam build() {
    final _$result = _$v ?? new _$FollowUserParam._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
