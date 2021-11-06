// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleData extends ArticleData {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? detail;
  @override
  final String? imgPath;
  @override
  final String? date;
  @override
  final int? userId;
  @override
  final String? userName;
  @override
  final String? userIconPath;
  @override
  final String? contents;
  @override
  final bool? opened;
  @override
  final bool? mine;

  factory _$ArticleData([void Function(ArticleDataBuilder)? updates]) =>
      (new ArticleDataBuilder()..update(updates)).build();

  _$ArticleData._(
      {this.id,
      this.title,
      this.detail,
      this.imgPath,
      this.date,
      this.userId,
      this.userName,
      this.userIconPath,
      this.contents,
      this.opened,
      this.mine})
      : super._();

  @override
  ArticleData rebuild(void Function(ArticleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleDataBuilder toBuilder() => new ArticleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleData &&
        id == other.id &&
        title == other.title &&
        detail == other.detail &&
        imgPath == other.imgPath &&
        date == other.date &&
        userId == other.userId &&
        userName == other.userName &&
        userIconPath == other.userIconPath &&
        contents == other.contents &&
        opened == other.opened &&
        mine == other.mine;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            title.hashCode),
                                        detail.hashCode),
                                    imgPath.hashCode),
                                date.hashCode),
                            userId.hashCode),
                        userName.hashCode),
                    userIconPath.hashCode),
                contents.hashCode),
            opened.hashCode),
        mine.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticleData')
          ..add('id', id)
          ..add('title', title)
          ..add('detail', detail)
          ..add('imgPath', imgPath)
          ..add('date', date)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('userIconPath', userIconPath)
          ..add('contents', contents)
          ..add('opened', opened)
          ..add('mine', mine))
        .toString();
  }
}

class ArticleDataBuilder implements Builder<ArticleData, ArticleDataBuilder> {
  _$ArticleData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _imgPath;
  String? get imgPath => _$this._imgPath;
  set imgPath(String? imgPath) => _$this._imgPath = imgPath;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userIconPath;
  String? get userIconPath => _$this._userIconPath;
  set userIconPath(String? userIconPath) => _$this._userIconPath = userIconPath;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  bool? _opened;
  bool? get opened => _$this._opened;
  set opened(bool? opened) => _$this._opened = opened;

  bool? _mine;
  bool? get mine => _$this._mine;
  set mine(bool? mine) => _$this._mine = mine;

  ArticleDataBuilder() {
    ArticleData._defaults(this);
  }

  ArticleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _detail = $v.detail;
      _imgPath = $v.imgPath;
      _date = $v.date;
      _userId = $v.userId;
      _userName = $v.userName;
      _userIconPath = $v.userIconPath;
      _contents = $v.contents;
      _opened = $v.opened;
      _mine = $v.mine;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleData;
  }

  @override
  void update(void Function(ArticleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticleData build() {
    final _$result = _$v ??
        new _$ArticleData._(
            id: id,
            title: title,
            detail: detail,
            imgPath: imgPath,
            date: date,
            userId: userId,
            userName: userName,
            userIconPath: userIconPath,
            contents: contents,
            opened: opened,
            mine: mine);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
