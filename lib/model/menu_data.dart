//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuData {
  /// Returns a new [MenuData] instance.
  MenuData({
    this.id,
    this.title,
    this.subTitle,
    this.categoryId,
    this.thumbPath,
    this.contents,
    this.imagePaths = const [],
    this.opened,
    this.mine,
  });

  /// 献立ID
  int id;

  /// 献立のタイトル
  String title;

  /// 献立のサブタイトル
  String subTitle;

  /// 献立のカテゴリ
  int categoryId;

  /// サムネイル画像パス
  String thumbPath;

  /// 献立の栄養素・作り方の情報パス
  String contents;

  List<MenuImageData> imagePaths;

  /// 公開済みか
  bool opened;

  /// 自分が投稿したものか
  bool mine;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuData &&
     other.id == id &&
     other.title == title &&
     other.subTitle == subTitle &&
     other.categoryId == categoryId &&
     other.thumbPath == thumbPath &&
     other.contents == contents &&
     other.imagePaths == imagePaths &&
     other.opened == opened &&
     other.mine == mine;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (subTitle == null ? 0 : subTitle.hashCode) +
    (categoryId == null ? 0 : categoryId.hashCode) +
    (thumbPath == null ? 0 : thumbPath.hashCode) +
    (contents == null ? 0 : contents.hashCode) +
    (imagePaths == null ? 0 : imagePaths.hashCode) +
    (opened == null ? 0 : opened.hashCode) +
    (mine == null ? 0 : mine.hashCode);

  @override
  String toString() => 'MenuData[id=$id, title=$title, subTitle=$subTitle, categoryId=$categoryId, thumbPath=$thumbPath, contents=$contents, imagePaths=$imagePaths, opened=$opened, mine=$mine]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (subTitle != null) {
      json[r'subTitle'] = subTitle;
    }
    if (categoryId != null) {
      json[r'categoryId'] = categoryId;
    }
    if (thumbPath != null) {
      json[r'thumbPath'] = thumbPath;
    }
    if (contents != null) {
      json[r'contents'] = contents;
    }
    if (imagePaths != null) {
      json[r'imagePaths'] = imagePaths;
    }
    if (opened != null) {
      json[r'opened'] = opened;
    }
    if (mine != null) {
      json[r'mine'] = mine;
    }
    return json;
  }

  /// Returns a new [MenuData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenuData(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        subTitle: mapValueOfType<String>(json, r'subTitle'),
        categoryId: mapValueOfType<int>(json, r'categoryId'),
        thumbPath: mapValueOfType<String>(json, r'thumbPath'),
        contents: mapValueOfType<String>(json, r'contents'),
        imagePaths: MenuImageData.listFromJson(json[r'imagePaths']),
        opened: mapValueOfType<bool>(json, r'opened'),
        mine: mapValueOfType<bool>(json, r'mine'),
      );
    }
    return null;
  }

  static List<MenuData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenuData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenuData>[];

  static Map<String, MenuData> mapFromJson(dynamic json) {
    final map = <String, MenuData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MenuData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MenuData-objects as value to a dart map
  static Map<String, List<MenuData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MenuData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MenuData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

