part of swagger.api;

class BestAnswerResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  BestAnswerResponse();

  @override
  String toString() {
    return 'BestAnswerResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  BestAnswerResponse.fromJson(Map<String, dynamic> json) {
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

  static List<BestAnswerResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BestAnswerResponse>() : json.map((value) => new BestAnswerResponse.fromJson(value)).toList();
  }

  static Map<String, BestAnswerResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BestAnswerResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BestAnswerResponse.fromJson(value));
    }
    return map;
  }
}

