part of swagger.api;

class AccountAuthResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  bool info = null;
  
  AccountAuthResponse();

  @override
  String toString() {
    return 'AccountAuthResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  AccountAuthResponse.fromJson(Map<String, dynamic> json) {
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

  static List<AccountAuthResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountAuthResponse>() : json.map((value) => new AccountAuthResponse.fromJson(value)).toList();
  }

  static Map<String, AccountAuthResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountAuthResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountAuthResponse.fromJson(value));
    }
    return map;
  }
}

