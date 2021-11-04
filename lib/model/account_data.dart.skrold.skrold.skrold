//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountData {
  /// Returns a new [AccountData] instance.
  AccountData({
    this.id,
    this.imgPath,
    this.name,
    this.email,
  });

  /// ユーザID
  int id;

  /// ユーザアイコン画像のパス
  String imgPath;

  /// ニックネーム
  String name;

  /// メールアドレス
  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountData &&
     other.id == id &&
     other.imgPath == imgPath &&
     other.name == name &&
     other.email == email;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (imgPath == null ? 0 : imgPath.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (email == null ? 0 : email.hashCode);

  @override
  String toString() => 'AccountData[id=$id, imgPath=$imgPath, name=$name, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (imgPath != null) {
      json[r'imgPath'] = imgPath;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    return json;
  }

  /// Returns a new [AccountData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountData(
        id: mapValueOfType<int>(json, r'id'),
        imgPath: mapValueOfType<String>(json, r'imgPath'),
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<AccountData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountData>[];

  static Map<String, AccountData> mapFromJson(dynamic json) {
    final map = <String, AccountData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountData-objects as value to a dart map
  static Map<String, List<AccountData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

