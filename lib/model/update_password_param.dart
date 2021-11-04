part of swagger.api;

class UpdatePasswordParam {
  /* 現在パスワード */
  String currentPassword = null;
  
/* 新規パスワード */
  String newPassword = null;
  
/* 新規パスワード再確認 */
  String newPasswordConfirm = null;
  
  UpdatePasswordParam();

  @override
  String toString() {
    return 'UpdatePasswordParam[currentPassword=$currentPassword, newPassword=$newPassword, newPasswordConfirm=$newPasswordConfirm, ]';
  }

  UpdatePasswordParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentPassword =
        json['currentPassword']
    ;
    newPassword =
        json['newPassword']
    ;
    newPasswordConfirm =
        json['newPasswordConfirm']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'currentPassword': currentPassword,
      'newPassword': newPassword,
      'newPasswordConfirm': newPasswordConfirm
     };
  }

  static List<UpdatePasswordParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdatePasswordParam>() : json.map((value) => new UpdatePasswordParam.fromJson(value)).toList();
  }

  static Map<String, UpdatePasswordParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdatePasswordParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdatePasswordParam.fromJson(value));
    }
    return map;
  }
}

