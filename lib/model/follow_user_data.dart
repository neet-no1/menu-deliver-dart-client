part of swagger.api;

class FollowUserData {
  /* ユーザID */
  int id = null;
  
/* ユーザアイコン画像のパス */
  String imgPath = null;
  
/* ニックネーム */
  String name = null;
  
  FollowUserData();

  @override
  String toString() {
    return 'FollowUserData[id=$id, imgPath=$imgPath, name=$name, ]';
  }

  FollowUserData.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imgPath': imgPath,
      'name': name
     };
  }

  static List<FollowUserData> listFromJson(List<dynamic> json) {
    return json == null ? new List<FollowUserData>() : json.map((value) => new FollowUserData.fromJson(value)).toList();
  }

  static Map<String, FollowUserData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FollowUserData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FollowUserData.fromJson(value));
    }
    return map;
  }
}

