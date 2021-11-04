part of swagger.api;

class RegistAccountParam {
  /* メールアドレス */
  String email = null;
  
/* パスワード */
  String password = null;
  
/* パスワード再確認 */
  String passwordConfirm = null;
  
  RegistAccountParam();

  @override
  String toString() {
    return 'RegistAccountParam[email=$email, password=$password, passwordConfirm=$passwordConfirm, ]';
  }

  RegistAccountParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email =
        json['email']
    ;
    password =
        json['password']
    ;
    passwordConfirm =
        json['passwordConfirm']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'passwordConfirm': passwordConfirm
     };
  }

  static List<RegistAccountParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegistAccountParam>() : json.map((value) => new RegistAccountParam.fromJson(value)).toList();
  }

  static Map<String, RegistAccountParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegistAccountParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegistAccountParam.fromJson(value));
    }
    return map;
  }
}

