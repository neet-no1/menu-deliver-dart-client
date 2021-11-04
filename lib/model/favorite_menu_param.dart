part of swagger.api;

class FavoriteMenuParam {
  /* 献立ID */
  int id = null;
  
/* お気に入りに追加した */
  bool added = null;
  
  FavoriteMenuParam();

  @override
  String toString() {
    return 'FavoriteMenuParam[id=$id, added=$added, ]';
  }

  FavoriteMenuParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    added =
        json['added']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'added': added
     };
  }

  static List<FavoriteMenuParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteMenuParam>() : json.map((value) => new FavoriteMenuParam.fromJson(value)).toList();
  }

  static Map<String, FavoriteMenuParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteMenuParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteMenuParam.fromJson(value));
    }
    return map;
  }
}

