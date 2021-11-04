//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistAccountParam {
  /// Returns a new [RegistAccountParam] instance.
  RegistAccountParam({
    this.email,
    this.password,
    this.passwordConfirm,
  });

  /// メールアドレス
  String email;

  /// パスワード
  String password;

  /// パスワード再確認
  String passwordConfirm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistAccountParam &&
     other.email == email &&
     other.password == password &&
     other.passwordConfirm == passwordConfirm;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (passwordConfirm == null ? 0 : passwordConfirm.hashCode);

  @override
  String toString() => 'RegistAccountParam[email=$email, password=$password, passwordConfirm=$passwordConfirm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    if (passwordConfirm != null) {
      json[r'passwordConfirm'] = passwordConfirm;
    }
    return json;
  }

  /// Returns a new [RegistAccountParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistAccountParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RegistAccountParam(
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        passwordConfirm: mapValueOfType<String>(json, r'passwordConfirm'),
      );
    }
    return null;
  }

  static List<RegistAccountParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RegistAccountParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RegistAccountParam>[];

  static Map<String, RegistAccountParam> mapFromJson(dynamic json) {
    final map = <String, RegistAccountParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RegistAccountParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegistAccountParam-objects as value to a dart map
  static Map<String, List<RegistAccountParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegistAccountParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RegistAccountParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

