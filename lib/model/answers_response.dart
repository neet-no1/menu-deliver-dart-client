part of swagger.api;

class AnswersResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  AnswersResponse();

  @override
  String toString() {
    return 'AnswersResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  AnswersResponse.fromJson(Map<String, dynamic> json) {
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

  static List<AnswersResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnswersResponse>() : json.map((value) => new AnswersResponse.fromJson(value)).toList();
  }

  static Map<String, AnswersResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnswersResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnswersResponse.fromJson(value));
    }
    return map;
  }
}

