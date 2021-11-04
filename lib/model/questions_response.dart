part of swagger.api;

class QuestionsResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  QuestionsResponse();

  @override
  String toString() {
    return 'QuestionsResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  QuestionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    errorInfo =
      
      
      new ErrorInfo.fromJson(json['errorInfo'])
;
    info =
      
      
      new Object.fromJson(json['info'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'errorInfo': errorInfo,
      'info': info
     };
  }

  static List<QuestionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuestionsResponse>() : json.map((value) => new QuestionsResponse.fromJson(value)).toList();
  }

  static Map<String, QuestionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuestionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuestionsResponse.fromJson(value));
    }
    return map;
  }
}

