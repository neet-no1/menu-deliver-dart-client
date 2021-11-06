// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuData extends MenuData {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? subTitle;
  @override
  final int? categoryId;
  @override
  final String? thumbPath;
  @override
  final String? contents;
  @override
  final BuiltList<MenuImageData>? imagePaths;
  @override
  final bool? opened;
  @override
  final bool? mine;

  factory _$MenuData([void Function(MenuDataBuilder)? updates]) =>
      (new MenuDataBuilder()..update(updates)).build();

  _$MenuData._(
      {this.id,
      this.title,
      this.subTitle,
      this.categoryId,
      this.thumbPath,
      this.contents,
      this.imagePaths,
      this.opened,
      this.mine})
      : super._();

  @override
  MenuData rebuild(void Function(MenuDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuDataBuilder toBuilder() => new MenuDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuData &&
        id == other.id &&
        title == other.title &&
        subTitle == other.subTitle &&
        categoryId == other.categoryId &&
        thumbPath == other.thumbPath &&
        contents == other.contents &&
        imagePaths == other.imagePaths &&
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
                            $jc($jc($jc(0, id.hashCode), title.hashCode),
                                subTitle.hashCode),
                            categoryId.hashCode),
                        thumbPath.hashCode),
                    contents.hashCode),
                imagePaths.hashCode),
            opened.hashCode),
        mine.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuData')
          ..add('id', id)
          ..add('title', title)
          ..add('subTitle', subTitle)
          ..add('categoryId', categoryId)
          ..add('thumbPath', thumbPath)
          ..add('contents', contents)
          ..add('imagePaths', imagePaths)
          ..add('opened', opened)
          ..add('mine', mine))
        .toString();
  }
}

class MenuDataBuilder implements Builder<MenuData, MenuDataBuilder> {
  _$MenuData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _thumbPath;
  String? get thumbPath => _$this._thumbPath;
  set thumbPath(String? thumbPath) => _$this._thumbPath = thumbPath;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  ListBuilder<MenuImageData>? _imagePaths;
  ListBuilder<MenuImageData> get imagePaths =>
      _$this._imagePaths ??= new ListBuilder<MenuImageData>();
  set imagePaths(ListBuilder<MenuImageData>? imagePaths) =>
      _$this._imagePaths = imagePaths;

  bool? _opened;
  bool? get opened => _$this._opened;
  set opened(bool? opened) => _$this._opened = opened;

  bool? _mine;
  bool? get mine => _$this._mine;
  set mine(bool? mine) => _$this._mine = mine;

  MenuDataBuilder() {
    MenuData._defaults(this);
  }

  MenuDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _subTitle = $v.subTitle;
      _categoryId = $v.categoryId;
      _thumbPath = $v.thumbPath;
      _contents = $v.contents;
      _imagePaths = $v.imagePaths?.toBuilder();
      _opened = $v.opened;
      _mine = $v.mine;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuData;
  }

  @override
  void update(void Function(MenuDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuData build() {
    _$MenuData _$result;
    try {
      _$result = _$v ??
          new _$MenuData._(
              id: id,
              title: title,
              subTitle: subTitle,
              categoryId: categoryId,
              thumbPath: thumbPath,
              contents: contents,
              imagePaths: _imagePaths?.build(),
              opened: opened,
              mine: mine);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imagePaths';
        _imagePaths?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MenuData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
