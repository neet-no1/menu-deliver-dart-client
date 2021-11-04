part of swagger.api;

class CompositionsResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  List<Object> info = [];
  
  CompositionsResponse();

  @override
  String toString() {
    return 'CompositionsResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  CompositionsResponse.fromJson(Map<String, dynamic> json) {
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

  static List<CompositionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CompositionsResponse>() : json.map((value) => new CompositionsResponse.fromJson(value)).toList();
  }

  static Map<String, CompositionsResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CompositionsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CompositionsResponse.fromJson(value));
    }
    return map;
  }
}

