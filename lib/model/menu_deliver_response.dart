//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenuDeliverResponse {
  /// Returns a new [MenuDeliverResponse] instance.
  MenuDeliverResponse({
    this.code,
    this.errorInfo,
  });

  /// 0以外はエラーコード
  int code;

  ErrorInfo errorInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuDeliverResponse &&
     other.code == code &&
     other.errorInfo == errorInfo;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (errorInfo == null ? 0 : errorInfo.hashCode);

  @override
  String toString() => 'MenuDeliverResponse[code=$code, errorInfo=$errorInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (errorInfo != null) {
      json[r'errorInfo'] = errorInfo;
    }
    return json;
  }

  /// Returns a new [MenuDeliverResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuDeliverResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenuDeliverResponse(
        code: mapValueOfType<int>(json, r'code'),
        errorInfo: ErrorInfo.fromJson(json[r'errorInfo']),
      );
    }
    return null;
  }

  static List<MenuDeliverResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenuDeliverResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenuDeliverResponse>[];

  static Map<String, MenuDeliverResponse> mapFromJson(dynamic json) {
    final map = <String, MenuDeliverResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MenuDeliverResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MenuDeliverResponse-objects as value to a dart map
  static Map<String, List<MenuDeliverResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MenuDeliverResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MenuDeliverResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

