//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordResetParam {
  /// Returns a new [PasswordResetParam] instance.
  PasswordResetParam({
    this.email,
  });

  /// パスワードリセット用メールアドレス
  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordResetParam &&
     other.email == email;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode);

  @override
  String toString() => 'PasswordResetParam[email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    return json;
  }

  /// Returns a new [PasswordResetParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordResetParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PasswordResetParam(
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<PasswordResetParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PasswordResetParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PasswordResetParam>[];

  static Map<String, PasswordResetParam> mapFromJson(dynamic json) {
    final map = <String, PasswordResetParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PasswordResetParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordResetParam-objects as value to a dart map
  static Map<String, List<PasswordResetParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PasswordResetParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PasswordResetParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

