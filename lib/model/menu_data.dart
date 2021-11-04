part of swagger.api;

class MenuData {
  /* 献立ID */
  int id = null;
  
/* 献立のタイトル */
  String title = null;
  
/* 献立のサブタイトル */
  String subTitle = null;
  
/* 献立のカテゴリ */
  int categoryId = null;
  
/* サムネイル画像パス */
  String thumbPath = null;
  
/* 献立の栄養素・作り方の情報パス */
  String contents = null;
  

  List<Object> imagePaths = [];
  
/* 公開済みか */
  bool opened = null;
  
/* 自分が投稿したものか */
  bool mine = null;
  
  MenuData();

  @override
  String toString() {
    return 'MenuData[id=$id, title=$title, subTitle=$subTitle, categoryId=$categoryId, thumbPath=$thumbPath, contents=$contents, imagePaths=$imagePaths, opened=$opened, mine=$mine, ]';
  }

  MenuData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    subTitle =
        json['subTitle']
    ;
    categoryId =
        json['categoryId']
    ;
    thumbPath =
        json['thumbPath']
    ;
    contents =
        json['contents']
    ;
    imagePaths =
      Object.listFromJson(json['imagePaths'])
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
      'subTitle': subTitle,
      'categoryId': categoryId,
      'thumbPath': thumbPath,
      'contents': contents,
      'imagePaths': imagePaths,
      'opened': opened,
      'mine': mine
     };
  }

  static List<MenuData> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuData>() : json.map((value) => new MenuData.fromJson(value)).toList();
  }

  static Map<String, MenuData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuData.fromJson(value));
    }
    return map;
  }
}

