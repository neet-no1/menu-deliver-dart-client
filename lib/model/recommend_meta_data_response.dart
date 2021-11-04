part of swagger.api;

class RecommendMetaDataResponse {
  /* 0以外はエラーコード */
  int code = null;
  

  ErrorInfo errorInfo = null;
  

  Object info = null;
  
  RecommendMetaDataResponse();

  @override
  String toString() {
    return 'RecommendMetaDataResponse[code=$code, errorInfo=$errorInfo, info=$info, ]';
  }

  RecommendMetaDataResponse.fromJson(Map<String, dynamic> json) {
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

  static List<RecommendMetaDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecommendMetaDataResponse>() : json.map((value) => new RecommendMetaDataResponse.fromJson(value)).toList();
  }

  static Map<String, RecommendMetaDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecommendMetaDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecommendMetaDataResponse.fromJson(value));
    }
    return map;
  }
}

