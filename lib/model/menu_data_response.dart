part of swagger.api;

class MenuDataResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  MenuDataResponse();

  @override
  String toString() {
    return 'MenuDataResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  MenuDataResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MenuDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuDataResponse>() : json.map((value) => new MenuDataResponse.fromJson(value)).toList();
  }

  static Map<String, MenuDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuDataResponse.fromJson(value));
    }
    return map;
  }
}

