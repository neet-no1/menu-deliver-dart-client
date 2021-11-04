part of swagger.api;

class MenuDeliverResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  
  MenuDeliverResponse();

  @override
  String toString() {
    return 'MenuDeliverResponse[code=$code, errorInfo=$errorInfo, ]';
  }

  MenuDeliverResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    errorInfo =
      
      
      new ErrorInfo.fromJson(json['errorInfo'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'errorInfo': errorInfo
     };
  }

  static List<MenuDeliverResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuDeliverResponse>() : json.map((value) => new MenuDeliverResponse.fromJson(value)).toList();
  }

  static Map<String, MenuDeliverResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuDeliverResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuDeliverResponse.fromJson(value));
    }
    return map;
  }
}

