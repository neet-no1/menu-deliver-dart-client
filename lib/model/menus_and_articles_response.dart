part of swagger.api;

class MenusAndArticlesResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  MenusAndArticlesResponse();

  @override
  String toString() {
    return 'MenusAndArticlesResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  MenusAndArticlesResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MenusAndArticlesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenusAndArticlesResponse>() : json.map((value) => new MenusAndArticlesResponse.fromJson(value)).toList();
  }

  static Map<String, MenusAndArticlesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenusAndArticlesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenusAndArticlesResponse.fromJson(value));
    }
    return map;
  }
}

