part of swagger.api;

class FavoriteArticleIsAddedResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  bool info = null;
  
  FavoriteArticleIsAddedResponse();

  @override
  String toString() {
    return 'FavoriteArticleIsAddedResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  FavoriteArticleIsAddedResponse.fromJson(Map<String, dynamic> json) {
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

  static List<FavoriteArticleIsAddedResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteArticleIsAddedResponse>() : json.map((value) => new FavoriteArticleIsAddedResponse.fromJson(value)).toList();
  }

  static Map<String, FavoriteArticleIsAddedResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteArticleIsAddedResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteArticleIsAddedResponse.fromJson(value));
    }
    return map;
  }
}

