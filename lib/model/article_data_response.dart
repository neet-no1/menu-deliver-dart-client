part of swagger.api;

class ArticleDataResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  ArticleDataResponse();

  @override
  String toString() {
    return 'ArticleDataResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  ArticleDataResponse.fromJson(Map<String, dynamic> json) {
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

  static List<ArticleDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ArticleDataResponse>() : json.map((value) => new ArticleDataResponse.fromJson(value)).toList();
  }

  static Map<String, ArticleDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ArticleDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ArticleDataResponse.fromJson(value));
    }
    return map;
  }
}

