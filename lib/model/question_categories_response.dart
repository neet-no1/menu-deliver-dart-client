part of swagger.api;

class QuestionCategoriesResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  List<Object> info = [];
  
  QuestionCategoriesResponse();

  @override
  String toString() {
    return 'QuestionCategoriesResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  QuestionCategoriesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    errorInfo =
      
      
      new ErrorInfo.fromJson(json['errorInfo'])
;
    info =
      Object.listFromJson(json['info'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'errorInfo': errorInfo,
      'info': info
     };
  }

  static List<QuestionCategoriesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuestionCategoriesResponse>() : json.map((value) => new QuestionCategoriesResponse.fromJson(value)).toList();
  }

  static Map<String, QuestionCategoriesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuestionCategoriesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuestionCategoriesResponse.fromJson(value));
    }
    return map;
  }
}

