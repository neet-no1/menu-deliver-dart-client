part of swagger.api;

class PageNation {
  /* 総ページ数 */
  int totalPages = null;
  
/* 現在のページ数 */
  int currentPage = null;
  
  PageNation();

  @override
  String toString() {
    return 'PageNation[totalPages=$totalPages, currentPage=$currentPage, ]';
  }

  PageNation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalPages =
        json['totalPages']
    ;
    currentPage =
        json['currentPage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalPages': totalPages,
      'currentPage': currentPage
     };
  }

  static List<PageNation> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageNation>() : json.map((value) => new PageNation.fromJson(value)).toList();
  }

  static Map<String, PageNation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageNation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageNation.fromJson(value));
    }
    return map;
  }
}

