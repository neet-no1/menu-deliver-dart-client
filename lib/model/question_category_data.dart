part of swagger.api;

class QuestionCategoryData {
  /* 質問カテゴリID */
  int id = null;
  
/* 質問カテゴリ名 */
  String name = null;
  
  QuestionCategoryData();

  @override
  String toString() {
    return 'QuestionCategoryData[id=$id, name=$name, ]';
  }

  QuestionCategoryData.fromJson(Map<String, dynamic> json) {
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

  static List<QuestionCategoryData> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuestionCategoryData>() : json.map((value) => new QuestionCategoryData.fromJson(value)).toList();
  }

  static Map<String, QuestionCategoryData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuestionCategoryData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuestionCategoryData.fromJson(value));
    }
    return map;
  }
}

