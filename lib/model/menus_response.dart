part of swagger.api;

class MenusResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  MenusResponse();

  @override
  String toString() {
    return 'MenusResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  MenusResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MenusResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenusResponse>() : json.map((value) => new MenusResponse.fromJson(value)).toList();
  }

  static Map<String, MenusResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenusResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenusResponse.fromJson(value));
    }
    return map;
  }
}

