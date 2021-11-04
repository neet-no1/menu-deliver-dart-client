//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FollowUserParam {
  /// Returns a new [FollowUserParam] instance.
  FollowUserParam({
    this.userId,
  });

  /// ユーザID
  int userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FollowUserParam &&
     other.userId == userId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'FollowUserParam[userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [FollowUserParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FollowUserParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FollowUserParam(
        userId: mapValueOfType<int>(json, r'userId'),
      );
    }
    return null;
  }

  static List<FollowUserParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FollowUserParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FollowUserParam>[];

  static Map<String, FollowUserParam> mapFromJson(dynamic json) {
    final map = <String, FollowUserParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FollowUserParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FollowUserParam-objects as value to a dart map
  static Map<String, List<FollowUserParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FollowUserParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FollowUserParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

