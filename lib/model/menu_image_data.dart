part of swagger.api;

class MenuImageData {
  /* 画像の説明 */
  String imageDescription = null;
  
/* 画像のパス */
  String uploadImageUrl = null;
  
  MenuImageData();

  @override
  String toString() {
    return 'MenuImageData[imageDescription=$imageDescription, uploadImageUrl=$uploadImageUrl, ]';
  }

  MenuImageData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    imageDescription =
        json['imageDescription']
    ;
    uploadImageUrl =
        json['uploadImageUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'imageDescription': imageDescription,
      'uploadImageUrl': uploadImageUrl
     };
  }

  static List<MenuImageData> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuImageData>() : json.map((value) => new MenuImageData.fromJson(value)).toList();
  }

  static Map<String, MenuImageData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuImageData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuImageData.fromJson(value));
    }
    return map;
  }
}

