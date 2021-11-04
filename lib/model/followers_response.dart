part of swagger.api;

class FollowersResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  FollowersResponse();

  @override
  String toString() {
    return 'FollowersResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  FollowersResponse.fromJson(Map<String, dynamic> json) {
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

  static List<FollowersResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<FollowersResponse>() : json.map((value) => new FollowersResponse.fromJson(value)).toList();
  }

  static Map<String, FollowersResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FollowersResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FollowersResponse.fromJson(value));
    }
    return map;
  }
}

