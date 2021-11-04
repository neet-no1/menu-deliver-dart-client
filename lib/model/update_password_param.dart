//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdatePasswordParam {
  /// Returns a new [UpdatePasswordParam] instance.
  UpdatePasswordParam({
    this.currentPassword,
    this.newPassword,
    this.newPasswordConfirm,
  });

  /// 現在パスワード
  String currentPassword;

  /// 新規パスワード
  String newPassword;

  /// 新規パスワード再確認
  String newPasswordConfirm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePasswordParam &&
     other.currentPassword == currentPassword &&
     other.newPassword == newPassword &&
     other.newPasswordConfirm == newPasswordConfirm;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (currentPassword == null ? 0 : currentPassword.hashCode) +
    (newPassword == null ? 0 : newPassword.hashCode) +
    (newPasswordConfirm == null ? 0 : newPasswordConfirm.hashCode);

  @override
  String toString() => 'UpdatePasswordParam[currentPassword=$currentPassword, newPassword=$newPassword, newPasswordConfirm=$newPasswordConfirm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (currentPassword != null) {
      json[r'currentPassword'] = currentPassword;
    }
    if (newPassword != null) {
      json[r'newPassword'] = newPassword;
    }
    if (newPasswordConfirm != null) {
      json[r'newPasswordConfirm'] = newPasswordConfirm;
    }
    return json;
  }

  /// Returns a new [UpdatePasswordParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePasswordParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UpdatePasswordParam(
        currentPassword: mapValueOfType<String>(json, r'currentPassword'),
        newPassword: mapValueOfType<String>(json, r'newPassword'),
        newPasswordConfirm: mapValueOfType<String>(json, r'newPasswordConfirm'),
      );
    }
    return null;
  }

  static List<UpdatePasswordParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UpdatePasswordParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UpdatePasswordParam>[];

  static Map<String, UpdatePasswordParam> mapFromJson(dynamic json) {
    final map = <String, UpdatePasswordParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UpdatePasswordParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdatePasswordParam-objects as value to a dart map
  static Map<String, List<UpdatePasswordParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdatePasswordParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UpdatePasswordParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

