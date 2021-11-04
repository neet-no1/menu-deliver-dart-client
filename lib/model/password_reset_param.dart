part of swagger.api;

class PasswordResetParam {
  /* パスワードリセット用メールアドレス */
  String email = null;
  
  PasswordResetParam();

  @override
  String toString() {
    return 'PasswordResetParam[email=$email, ]';
  }

  PasswordResetParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email =
        json['email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email
     };
  }

  static List<PasswordResetParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<PasswordResetParam>() : json.map((value) => new PasswordResetParam.fromJson(value)).toList();
  }

  static Map<String, PasswordResetParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordResetParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PasswordResetParam.fromJson(value));
    }
    return map;
  }
}

