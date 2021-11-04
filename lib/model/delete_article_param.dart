part of swagger.api;

class DeleteArticleParam {
  /* 記事ID */
  int id = null;
  
  DeleteArticleParam();

  @override
  String toString() {
    return 'DeleteArticleParam[id=$id, ]';
  }

  DeleteArticleParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<DeleteArticleParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeleteArticleParam>() : json.map((value) => new DeleteArticleParam.fromJson(value)).toList();
  }

  static Map<String, DeleteArticleParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeleteArticleParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeleteArticleParam.fromJson(value));
    }
    return map;
  }
}

