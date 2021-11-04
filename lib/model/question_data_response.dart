part of swagger.api;

class QuestionDataResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  QuestionDataResponse();

  @override
  String toString() {
    return 'QuestionDataResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  QuestionDataResponse.fromJson(Map<String, dynamic> json) {
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

  static List<QuestionDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuestionDataResponse>() : json.map((value) => new QuestionDataResponse.fromJson(value)).toList();
  }

  static Map<String, QuestionDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuestionDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuestionDataResponse.fromJson(value));
    }
    return map;
  }
}

