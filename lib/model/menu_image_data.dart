//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuImageData {
  /// Returns a new [MenuImageData] instance.
  MenuImageData({
    this.imageDescription,
    this.uploadImageUrl,
  });

  /// 画像の説明
  String imageDescription;

  /// 画像のパス
  String uploadImageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuImageData &&
     other.imageDescription == imageDescription &&
     other.uploadImageUrl == uploadImageUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (imageDescription == null ? 0 : imageDescription.hashCode) +
    (uploadImageUrl == null ? 0 : uploadImageUrl.hashCode);

  @override
  String toString() => 'MenuImageData[imageDescription=$imageDescription, uploadImageUrl=$uploadImageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (imageDescription != null) {
      json[r'imageDescription'] = imageDescription;
    }
    if (uploadImageUrl != null) {
      json[r'uploadImageUrl'] = uploadImageUrl;
    }
    return json;
  }

  /// Returns a new [MenuImageData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuImageData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenuImageData(
        imageDescription: mapValueOfType<String>(json, r'imageDescription'),
        uploadImageUrl: mapValueOfType<String>(json, r'uploadImageUrl'),
      );
    }
    return null;
  }

  static List<MenuImageData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenuImageData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenuImageData>[];

  static Map<String, MenuImageData> mapFromJson(dynamic json) {
    final map = <String, MenuImageData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MenuImageData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MenuImageData-objects as value to a dart map
  static Map<String, List<MenuImageData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MenuImageData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MenuImageData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

