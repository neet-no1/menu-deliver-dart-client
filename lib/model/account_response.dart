part of swagger.api;

class AccountResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  AccountResponse();

  @override
  String toString() {
    return 'AccountResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  AccountResponse.fromJson(Map<String, dynamic> json) {
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

  static List<AccountResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountResponse>() : json.map((value) => new AccountResponse.fromJson(value)).toList();
  }

  static Map<String, AccountResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountResponse.fromJson(value));
    }
    return map;
  }
}

