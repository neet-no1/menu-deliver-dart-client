part of swagger.api;

class FavoriteArticleParam {
  /* 記事ID */
  int id = null;
  
/* お気に入りに追加した */
  bool added = null;
  
  FavoriteArticleParam();

  @override
  String toString() {
    return 'FavoriteArticleParam[id=$id, added=$added, ]';
  }

  FavoriteArticleParam.fromJson(Map<String, dynamic> json) {
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

  static List<FavoriteArticleParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteArticleParam>() : json.map((value) => new FavoriteArticleParam.fromJson(value)).toList();
  }

  static Map<String, FavoriteArticleParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteArticleParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteArticleParam.fromJson(value));
    }
    return map;
  }
}

