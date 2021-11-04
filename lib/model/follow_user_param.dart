part of swagger.api;

class FollowUserParam {
  /* ユーザID */
  int userId = null;
  
  FollowUserParam();

  @override
  String toString() {
    return 'FollowUserParam[userId=$userId, ]';
  }

  FollowUserParam.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId
     };
  }

  static List<FollowUserParam> listFromJson(List<dynamic> json) {
    return json == null ? new List<FollowUserParam>() : json.map((value) => new FollowUserParam.fromJson(value)).toList();
  }

  static Map<String, FollowUserParam> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FollowUserParam>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FollowUserParam.fromJson(value));
    }
    return map;
  }
}

