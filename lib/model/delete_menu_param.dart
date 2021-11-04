part of swagger.api;

class DeleteMenuParam {
  /* 献立ID */
  int id = null;
  
  DeleteMenuParam();

  @override
  String toString() {
    return 'DeleteMenuParam[id=$id, ]';
  }

  DeleteMenuParam.fromJson(Map<String, dynamic> json) {
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

  static List<DeleteMenuParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeleteMenuParam>() : json.map((value) => new DeleteMenuParam.fromJson(value)).toList();
  }

  static Map<String, DeleteMenuParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeleteMenuParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeleteMenuParam.fromJson(value));
    }
    return map;
  }
}

