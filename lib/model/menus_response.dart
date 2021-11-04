//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MenusResponse {
  /// Returns a new [MenusResponse] instance.
  MenusResponse({
    this.info,
    this.code,
    this.errorInfo,
  });

  Object info;

  /// 0以外はエラーコード
  int code;

  ErrorInfo errorInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenusResponse &&
     other.info == info &&
     other.code == code &&
     other.errorInfo == errorInfo;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (info == null ? 0 : info.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (errorInfo == null ? 0 : errorInfo.hashCode);

  @override
  String toString() => 'MenusResponse[info=$info, code=$code, errorInfo=$errorInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (info != null) {
      json[r'info'] = info;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (errorInfo != null) {
      json[r'errorInfo'] = errorInfo;
    }
    return json;
  }

  /// Returns a new [MenusResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenusResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return MenusResponse(
        info: mapValueOfType<Object>(json, r'info'),
        code: mapValueOfType<int>(json, r'code'),
        errorInfo: ErrorInfo.fromJson(json[r'errorInfo']),
      );
    }
    return null;
  }

  static List<MenusResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(MenusResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <MenusResponse>[];

  static Map<String, MenusResponse> mapFromJson(dynamic json) {
    final map = <String, MenusResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = MenusResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MenusResponse-objects as value to a dart map
  static Map<String, List<MenusResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MenusResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = MenusResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

