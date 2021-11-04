part of swagger.api;

class NoticesResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  List<String> info = [];
  
  NoticesResponse();

  @override
  String toString() {
    return 'NoticesResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  NoticesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    errorInfo =
      
      
      new ErrorInfo.fromJson(json['errorInfo'])
;
    info =
        (json['info'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'errorInfo': errorInfo,
      'info': info
     };
  }

  static List<NoticesResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<NoticesResponse>() : json.map((value) => new NoticesResponse.fromJson(value)).toList();
  }

  static Map<String, NoticesResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NoticesResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NoticesResponse.fromJson(value));
    }
    return map;
  }
}

