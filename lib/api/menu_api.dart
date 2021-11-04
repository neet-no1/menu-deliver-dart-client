part of swagger.api;



class MenuApi {
  final ApiClient apiClient;

  MenuApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 献立削除
  ///
  /// 献立を削除 認証必須 
  Future<BasicResponse> deleteMenu(DeleteMenuParam deleteMenuParam) async {
    Object postBody = deleteMenuParam;

    // verify required params are set
    if(deleteMenuParam == null) {
     throw new ApiException(400, "Missing required param: deleteMenuParam");
    }

    // create path and map variables
    String path = "/menu/delete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'BasicResponse') as BasicResponse ;
    } else {
      return null;
    }
  }
  /// 献立お気に入り追加・解除
  ///
  /// 献立のお気に入りの追加と解除を行う 認証必須 
  Future<BasicResponse> favoriteMenu(FavoriteMenuParam favoriteMenuParam) async {
    Object postBody = favoriteMenuParam;

    // verify required params are set
    if(favoriteMenuParam == null) {
     throw new ApiException(400, "Missing required param: favoriteMenuParam");
    }

    // create path and map variables
    String path = "/menu/favorite".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'BasicResponse') as BasicResponse ;
    } else {
      return null;
    }
  }
  /// 食品成分表情報取得
  ///
  /// 食品成分表のデータ一覧を取得する 認証不要 
  Future<CompositionsResponse> getCompositions() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/menu/compositions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'CompositionsResponse') as CompositionsResponse ;
    } else {
      return null;
    }
  }
  /// 献立内容取得
  ///
  /// 献立内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  Future<MenuDataResponse> getMenu(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/menu".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenuDataResponse') as MenuDataResponse ;
    } else {
      return null;
    }
  }
  /// 献立カテゴリ取得
  ///
  /// 献立のカテゴリ一覧を取得する 認証不要 
  Future<MenuCategoriesResponse> getMenuCategories() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/menu/categories".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenuCategoriesResponse') as MenuCategoriesResponse ;
    } else {
      return null;
    }
  }
  /// 新着献立取得
  ///
  /// 最近の投稿順(更新日時)で献立情報を取得 認証不要 
  Future<MenusResponse> getMenuNewArrival() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/menu/newarrival".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenusResponse') as MenusResponse ;
    } else {
      return null;
    }
  }
  /// 人気献立取得
  ///
  /// 直近の閲覧数が多い献立を取得 認証不要 
  Future<MenusResponse> getMenuPopular() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/menu/popular".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenusResponse') as MenusResponse ;
    } else {
      return null;
    }
  }
  /// 投稿献立一覧取得
  ///
  /// 自身が投稿した献立の一覧を取得 認証必須 
  Future<MenusResponse> getPostedMenus({ int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/posted/menus".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenusResponse') as MenusResponse ;
    } else {
      return null;
    }
  }
  /// 献立投稿
  ///
  /// 献立を投稿する S3へアップロードする 認証必須 
  Future<BasicResponse> postMenu(int id, String title, int category, String contents, bool opened, { String subTitle, MultipartFile thumb, String cookery, List<String> files, List<String> filesDescription }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(title == null) {
     throw new ApiException(400, "Missing required param: title");
    }
    if(category == null) {
     throw new ApiException(400, "Missing required param: category");
    }
    if(contents == null) {
     throw new ApiException(400, "Missing required param: contents");
    }
    if(opened == null) {
     throw new ApiException(400, "Missing required param: opened");
    }

    // create path and map variables
    String path = "/menu".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (id != null) {
        hasFields = true;
        mp.fields['id'] = parameterToString(id);
      }
      
      if (title != null) {
        hasFields = true;
        mp.fields['title'] = parameterToString(title);
      }
      
      if (subTitle != null) {
        hasFields = true;
        mp.fields['subTitle'] = parameterToString(subTitle);
      }
      
      if (thumb != null) {
        hasFields = true;
        mp.fields['thumb'] = thumb.field;
        mp.files.add(thumb);
      }
      
      if (category != null) {
        hasFields = true;
        mp.fields['category'] = parameterToString(category);
      }
      
      if (contents != null) {
        hasFields = true;
        mp.fields['contents'] = parameterToString(contents);
      }
      
      if (cookery != null) {
        hasFields = true;
        mp.fields['cookery'] = parameterToString(cookery);
      }
      
      if (files != null) {
        hasFields = true;
        mp.fields['files'] = parameterToString(files);
      }
      
      if (filesDescription != null) {
        hasFields = true;
        mp.fields['filesDescription'] = parameterToString(filesDescription);
      }
      
      if (opened != null) {
        hasFields = true;
        mp.fields['opened'] = parameterToString(opened);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (id != null)
        formParams['id'] = parameterToString(id);
if (title != null)
        formParams['title'] = parameterToString(title);
if (subTitle != null)
        formParams['subTitle'] = parameterToString(subTitle);

if (category != null)
        formParams['category'] = parameterToString(category);
if (contents != null)
        formParams['contents'] = parameterToString(contents);
if (cookery != null)
        formParams['cookery'] = parameterToString(cookery);
if (files != null)
        formParams['files'] = parameterToString(files);
if (filesDescription != null)
        formParams['filesDescription'] = parameterToString(filesDescription);
if (opened != null)
        formParams['opened'] = parameterToString(opened);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'BasicResponse') as BasicResponse ;
    } else {
      return null;
    }
  }
  /// 献立検索
  ///
  /// 献立情報を検索 タグを指定した場合、そのタグのみ取得する タグを指定しない場合、全てを取得する 認証不要 
  Future<MenusResponse> searchMenus({ String keyword, List<int> categories, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/search/menus".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keyword", keyword));
    }
    if(categories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "categories", categories));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'MenusResponse') as MenusResponse ;
    } else {
      return null;
    }
  }
}
