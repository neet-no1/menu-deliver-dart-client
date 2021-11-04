//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ArticleData {
  /// Returns a new [ArticleData] instance.
  ArticleData({
    this.id,
    this.title,
    this.detail,
    this.imgPath,
    this.date,
    this.userId,
    this.userName,
    this.userIconPath,
    this.contents,
    this.opened,
    this.mine,
  });

  /// 記事ID
  int id;

  /// 記事のタイトル
  String title;

  /// 詳細文頭
  String detail;

  /// 表示する画像のパス
  String imgPath;

  /// 記事の更新日
  String date;

  /// 投稿ユーザID
  int userId;

  /// 投稿ユーザ名
  String userName;

  /// ユーザアイコン画像のパス
  String userIconPath;

  /// 記事内容のパス
  String contents;

  /// 公開済みか
  bool opened;

  /// 自分が投稿したものか
  bool mine;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArticleData &&
     other.id == id &&
     other.title == title &&
     other.detail == detail &&
     other.imgPath == imgPath &&
     other.date == date &&
     other.userId == userId &&
     other.userName == userName &&
     other.userIconPath == userIconPath &&
     other.contents == contents &&
     other.opened == opened &&
     other.mine == mine;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (detail == null ? 0 : detail.hashCode) +
    (imgPath == null ? 0 : imgPath.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (userName == null ? 0 : userName.hashCode) +
    (userIconPath == null ? 0 : userIconPath.hashCode) +
    (contents == null ? 0 : contents.hashCode) +
    (opened == null ? 0 : opened.hashCode) +
    (mine == null ? 0 : mine.hashCode);

  @override
  String toString() => 'ArticleData[id=$id, title=$title, detail=$detail, imgPath=$imgPath, date=$date, userId=$userId, userName=$userName, userIconPath=$userIconPath, contents=$contents, opened=$opened, mine=$mine]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (detail != null) {
      json[r'detail'] = detail;
    }
    if (imgPath != null) {
      json[r'imgPath'] = imgPath;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userName != null) {
      json[r'userName'] = userName;
    }
    if (userIconPath != null) {
      json[r'userIconPath'] = userIconPath;
    }
    if (contents != null) {
      json[r'contents'] = contents;
    }
    if (opened != null) {
      json[r'opened'] = opened;
    }
    if (mine != null) {
      json[r'mine'] = mine;
    }
    return json;
  }

  /// Returns a new [ArticleData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArticleData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ArticleData(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        detail: mapValueOfType<String>(json, r'detail'),
        imgPath: mapValueOfType<String>(json, r'imgPath'),
        date: mapValueOfType<String>(json, r'date'),
        userId: mapValueOfType<int>(json, r'userId'),
        userName: mapValueOfType<String>(json, r'userName'),
        userIconPath: mapValueOfType<String>(json, r'userIconPath'),
        contents: mapValueOfType<String>(json, r'contents'),
        opened: mapValueOfType<bool>(json, r'opened'),
        mine: mapValueOfType<bool>(json, r'mine'),
      );
    }
    return null;
  }

  static List<ArticleData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ArticleData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ArticleData>[];

  static Map<String, ArticleData> mapFromJson(dynamic json) {
    final map = <String, ArticleData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ArticleData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleData-objects as value to a dart map
  static Map<String, List<ArticleData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ArticleData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ArticleData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

