part of swagger.api;

class FavoriteMenuIsAddedResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  bool info = null;
  
  FavoriteMenuIsAddedResponse();

  @override
  String toString() {
    return 'FavoriteMenuIsAddedResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  FavoriteMenuIsAddedResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    errorInfo =
      
      
      new ErrorInfo.fromJson(json['errorInfo'])
;
    info =
        json['info']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'errorInfo': errorInfo,
      'info': info
     };
  }

  static List<FavoriteMenuIsAddedResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteMenuIsAddedResponse>() : json.map((value) => new FavoriteMenuIsAddedResponse.fromJson(value)).toList();
  }

  static Map<String, FavoriteMenuIsAddedResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteMenuIsAddedResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteMenuIsAddedResponse.fromJson(value));
    }
    return map;
  }
}

