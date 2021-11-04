part of swagger.api;

class BasicResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  
/* 成功可否 */
  int info = null;
  
  BasicResponse();

  @override
  String toString() {
    return 'BasicResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  BasicResponse.fromJson(Map<String, dynamic> json) {
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

  static List<BasicResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasicResponse>() : json.map((value) => new BasicResponse.fromJson(value)).toList();
  }

  static Map<String, BasicResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BasicResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BasicResponse.fromJson(value));
    }
    return map;
  }
}

