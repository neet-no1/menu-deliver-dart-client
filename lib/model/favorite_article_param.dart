//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FavoriteArticleParam {
  /// Returns a new [FavoriteArticleParam] instance.
  FavoriteArticleParam({
    this.id,
    this.added,
  });

  /// 記事ID
  int id;

  /// お気に入りに追加した
  bool added;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FavoriteArticleParam &&
     other.id == id &&
     other.added == added;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (added == null ? 0 : added.hashCode);

  @override
  String toString() => 'FavoriteArticleParam[id=$id, added=$added]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (added != null) {
      json[r'added'] = added;
    }
    return json;
  }

  /// Returns a new [FavoriteArticleParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FavoriteArticleParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FavoriteArticleParam(
        id: mapValueOfType<int>(json, r'id'),
        added: mapValueOfType<bool>(json, r'added'),
      );
    }
    return null;
  }

  static List<FavoriteArticleParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FavoriteArticleParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FavoriteArticleParam>[];

  static Map<String, FavoriteArticleParam> mapFromJson(dynamic json) {
    final map = <String, FavoriteArticleParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FavoriteArticleParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FavoriteArticleParam-objects as value to a dart map
  static Map<String, List<FavoriteArticleParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FavoriteArticleParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FavoriteArticleParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

