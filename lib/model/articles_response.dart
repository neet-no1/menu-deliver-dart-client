part of swagger.api;

class ArticlesResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  ArticlesResponse();

  @override
  String toString() {
    return 'ArticlesResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  ArticlesResponse.fromJson(Map<String, dynamic> json) {
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

  static List<ArticlesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ArticlesResponse>() : json.map((value) => new ArticlesResponse.fromJson(value)).toList();
  }

  static Map<String, ArticlesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ArticlesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ArticlesResponse.fromJson(value));
    }
    return map;
  }
}

