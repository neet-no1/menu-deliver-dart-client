part of swagger.api;

class QuestionData {
  /* 質問ID */
  int id = null;
  
/* 質問内容 */
  String contents = null;
  
/* 画像のパス */
  String images = null;
  
/* ニックネーム */
  String userName = null;
  
/* ユーザアイコンのパス */
  String userIcon = null;
  
/* 自分が投稿したものか */
  bool mine = null;
  
  QuestionData();

  @override
  String toString() {
    return 'QuestionData[id=$id, contents=$contents, images=$images, userName=$userName, userIcon=$userIcon, mine=$mine, ]';
  }

  QuestionData.fromJson(Map<String, dynamic> json) {
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
    mine =
        json['mine']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'contents': contents,
      'images': images,
      'userName': userName,
      'userIcon': userIcon,
      'mine': mine
     };
  }

  static List<QuestionData> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuestionData>() : json.map((value) => new QuestionData.fromJson(value)).toList();
  }

  static Map<String, QuestionData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuestionData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuestionData.fromJson(value));
    }
    return map;
  }
}

