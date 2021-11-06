// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerData extends AnswerData {
  @override
  final int? id;
  @override
  final String? contents;
  @override
  final String? images;
  @override
  final String? userName;
  @override
  final String? userIcon;

  factory _$AnswerData([void Function(AnswerDataBuilder)? updates]) =>
      (new AnswerDataBuilder()..update(updates)).build();

  _$AnswerData._(
      {this.id, this.contents, this.images, this.userName, this.userIcon})
      : super._();

  @override
  AnswerData rebuild(void Function(AnswerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerDataBuilder toBuilder() => new AnswerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerData &&
        id == other.id &&
        contents == other.contents &&
        images == other.images &&
        userName == other.userName &&
        userIcon == other.userIcon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), contents.hashCode), images.hashCode),
            userName.hashCode),
        userIcon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnswerData')
          ..add('id', id)
          ..add('contents', contents)
          ..add('images', images)
          ..add('userName', userName)
          ..add('userIcon', userIcon))
        .toString();
  }
}

class AnswerDataBuilder implements Builder<AnswerData, AnswerDataBuilder> {
  _$AnswerData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userIcon;
  String? get userIcon => _$this._userIcon;
  set userIcon(String? userIcon) => _$this._userIcon = userIcon;

  AnswerDataBuilder() {
    AnswerData._defaults(this);
  }

  AnswerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contents = $v.contents;
      _images = $v.images;
      _userName = $v.userName;
      _userIcon = $v.userIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerData;
  }

  @override
  void update(void Function(AnswerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AnswerData build() {
    final _$result = _$v ??
        new _$AnswerData._(
            id: id,
            contents: contents,
            images: images,
            userName: userName,
            userIcon: userIcon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
