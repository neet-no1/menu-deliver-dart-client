part of swagger.api;

class AnswerData {
  /* 回答ID */
  int id = null;
  
/* 回答内容 */
  String contents = null;
  
/* 画像のパス */
  String images = null;
  
/* ニックネーム */
  String userName = null;
  
/* ユーザアイコンのパス */
  String userIcon = null;
  
  AnswerData();

  @override
  String toString() {
    return 'AnswerData[id=$id, contents=$contents, images=$images, userName=$userName, userIcon=$userIcon, ]';
  }

  AnswerData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    contents =
        json['contents']
    ;
    images =
        json['images']
    ;
    userName =
        json['userName']
    ;
    userIcon =
        json['userIcon']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'contents': contents,
      'images': images,
      'userName': userName,
      'userIcon': userIcon
     };
  }

  static List<AnswerData> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnswerData>() : json.map((value) => new AnswerData.fromJson(value)).toList();
  }

  static Map<String, AnswerData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnswerData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnswerData.fromJson(value));
    }
    return map;
  }
}

