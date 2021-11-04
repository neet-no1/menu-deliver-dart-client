//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QuestionData {
  /// Returns a new [QuestionData] instance.
  QuestionData({
    this.id,
    this.contents,
    this.images,
    this.userName,
    this.userIcon,
    this.mine,
  });

  /// 質問ID
  int id;

  /// 質問内容
  String contents;

  /// 画像のパス
  String images;

  /// ニックネーム
  String userName;

  /// ユーザアイコンのパス
  String userIcon;

  /// 自分が投稿したものか
  bool mine;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuestionData &&
     other.id == id &&
     other.contents == contents &&
     other.images == images &&
     other.userName == userName &&
     other.userIcon == userIcon &&
     other.mine == mine;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (contents == null ? 0 : contents.hashCode) +
    (images == null ? 0 : images.hashCode) +
    (userName == null ? 0 : userName.hashCode) +
    (userIcon == null ? 0 : userIcon.hashCode) +
    (mine == null ? 0 : mine.hashCode);

  @override
  String toString() => 'QuestionData[id=$id, contents=$contents, images=$images, userName=$userName, userIcon=$userIcon, mine=$mine]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (contents != null) {
      json[r'contents'] = contents;
    }
    if (images != null) {
      json[r'images'] = images;
    }
    if (userName != null) {
      json[r'userName'] = userName;
    }
    if (userIcon != null) {
      json[r'userIcon'] = userIcon;
    }
    if (mine != null) {
      json[r'mine'] = mine;
    }
    return json;
  }

  /// Returns a new [QuestionData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuestionData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return QuestionData(
        id: mapValueOfType<int>(json, r'id'),
        contents: mapValueOfType<String>(json, r'contents'),
        images: mapValueOfType<String>(json, r'images'),
        userName: mapValueOfType<String>(json, r'userName'),
        userIcon: mapValueOfType<String>(json, r'userIcon'),
        mine: mapValueOfType<bool>(json, r'mine'),
      );
    }
    return null;
  }

  static List<QuestionData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(QuestionData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <QuestionData>[];

  static Map<String, QuestionData> mapFromJson(dynamic json) {
    final map = <String, QuestionData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = QuestionData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of QuestionData-objects as value to a dart map
  static Map<String, List<QuestionData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<QuestionData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = QuestionData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

