part of swagger.api;

class AccountData {
  /* ユーザID */
  int id = null;
  
/* ユーザアイコン画像のパス */
  String imgPath = null;
  
/* ニックネーム */
  String name = null;
  
/* メールアドレス */
  String email = null;
  
  AccountData();

  @override
  String toString() {
    return 'AccountData[id=$id, imgPath=$imgPath, name=$name, email=$email, ]';
  }

  AccountData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    imgPath =
        json['imgPath']
    ;
    name =
        json['name']
    ;
    email =
        json['email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imgPath': imgPath,
      'name': name,
      'email': email
     };
  }

  static List<AccountData> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountData>() : json.map((value) => new AccountData.fromJson(value)).toList();
  }

  static Map<String, AccountData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountData.fromJson(value));
    }
    return map;
  }
}

