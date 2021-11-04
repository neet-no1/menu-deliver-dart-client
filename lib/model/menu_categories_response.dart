part of swagger.api;

class MenuCategoriesResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  List<Object> info = [];
  
  MenuCategoriesResponse();

  @override
  String toString() {
    return 'MenuCategoriesResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  MenuCategoriesResponse.fromJson(Map<String, dynamic> json) {
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

  static List<MenuCategoriesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuCategoriesResponse>() : json.map((value) => new MenuCategoriesResponse.fromJson(value)).toList();
  }

  static Map<String, MenuCategoriesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuCategoriesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuCategoriesResponse.fromJson(value));
    }
    return map;
  }
}

