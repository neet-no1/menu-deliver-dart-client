part of swagger.api;

class DecideBestAnswerParam {
  /* 質問ID */
  int questionId = null;
  
/* 回答ID */
  int answerId = null;
  
  DecideBestAnswerParam();

  @override
  String toString() {
    return 'DecideBestAnswerParam[questionId=$questionId, answerId=$answerId, ]';
  }

  DecideBestAnswerParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    questionId =
        json['questionId']
    ;
    answerId =
        json['answerId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'questionId': questionId,
      'answerId': answerId
     };
  }

  static List<DecideBestAnswerParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<DecideBestAnswerParam>() : json.map((value) => new DecideBestAnswerParam.fromJson(value)).toList();
  }

  static Map<String, DecideBestAnswerParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DecideBestAnswerParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DecideBestAnswerParam.fromJson(value));
    }
    return map;
  }
}

