part of swagger.api;

class ErrorInfo {
  
  String errorMessage = null;
  
  ErrorInfo();

  @override
  String toString() {
    return 'ErrorInfo[errorMessage=$errorMessage, ]';
  }

  ErrorInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errorMessage =
        json['errorMessage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'errorMessage': errorMessage
     };
  }

  static List<ErrorInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorInfo>() : json.map((value) => new ErrorInfo.fromJson(value)).toList();
  }

  static Map<String, ErrorInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorInfo.fromJson(value));
    }
    return map;
  }
}

