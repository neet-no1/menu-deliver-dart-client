part of swagger.api;

class MenuCategoryData {
  /* 献立カテゴリID */
  int id = null;
  
/* 献立カテゴリ名 */
  String name = null;
  
  MenuCategoryData();

  @override
  String toString() {
    return 'MenuCategoryData[id=$id, name=$name, ]';
  }

  MenuCategoryData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
     };
  }

  static List<MenuCategoryData> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuCategoryData>() : json.map((value) => new MenuCategoryData.fromJson(value)).toList();
  }

  static Map<String, MenuCategoryData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuCategoryData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuCategoryData.fromJson(value));
    }
    return map;
  }
}

