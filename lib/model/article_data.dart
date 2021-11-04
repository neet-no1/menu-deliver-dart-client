part of swagger.api;

class ArticleData {
  /* 記事ID */
  int id = null;
  
/* 記事のタイトル */
  String title = null;
  
/* 詳細文頭 */
  String detail = null;
  
/* 表示する画像のパス */
  String imgPath = null;
  
/* 記事の更新日 */
  String date = null;
  
/* 投稿ユーザID */
  int userId = null;
  
/* 投稿ユーザ名 */
  String userName = null;
  
/* ユーザアイコン画像のパス */
  String userIconPath = null;
  
/* 記事内容のパス */
  String contents = null;
  
/* 公開済みか */
  bool opened = null;
  
/* 自分が投稿したものか */
  bool mine = null;
  
  ArticleData();

  @override
  String toString() {
    return 'ArticleData[id=$id, title=$title, detail=$detail, imgPath=$imgPath, date=$date, userId=$userId, userName=$userName, userIconPath=$userIconPath, contents=$contents, opened=$opened, mine=$mine, ]';
  }

  ArticleData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    detail =
        json['detail']
    ;
    imgPath =
        json['imgPath']
    ;
    date =
        json['date']
    ;
    userId =
        json['userId']
    ;
    userName =
        json['userName']
    ;
    userIconPath =
        json['userIconPath']
    ;
    contents =
        json['contents']
    ;
    opened =
        json['opened']
    ;
    mine =
        json['mine']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'detail': detail,
      'imgPath': imgPath,
      'date': date,
      'userId': userId,
      'userName': userName,
      'userIconPath': userIconPath,
      'contents': contents,
      'opened': opened,
      'mine': mine
     };
  }

  static List<ArticleData> listFromJson(List<dynamic> json) {
    return json == null ? new List<ArticleData>() : json.map((value) => new ArticleData.fromJson(value)).toList();
  }

  static Map<String, ArticleData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ArticleData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ArticleData.fromJson(value));
    }
    return map;
  }
}

