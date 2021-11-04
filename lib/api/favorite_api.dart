part of swagger.api;



class FavoriteApi {
  final ApiClient apiClient;

  FavoriteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 記事のお気に入り追加状態を取得
  ///
  /// 記事がお気に入りに追加されているかを確認する 認証必須 
  Future<FavoriteArticleIsAddedResponse> favoriteArticleIsAdded(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/favorite/article/item".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'FavoriteArticleIsAddedResponse') as FavoriteArticleIsAddedResponse ;
    } else {
      return null;
    }
  }
  /// 献立のお気に入り追加状態を取得
  ///
  /// 献立がお気に入りに追加されているかを確認する 認証必須 
  Future<FavoriteMenuIsAddedResponse> favoriteMenuIsAdded(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/favorite/menu/item".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'FavoriteMenuIsAddedResponse') as FavoriteMenuIsAddedResponse ;
    } else {
      return null;
    }
  }
  /// お気に入り一覧を取得
  ///
  /// お気に入りの記事と献立の一覧を取得する 認証必須 
  Future<MenusAndArticlesResponse> getFavoriteItems({ int menuPage, int articlePage }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/favorites".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(menuPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "menuPage", menuPage));
    }
    if(articlePage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "articlePage", articlePage));
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
          apiClient.deserialize(response.body, 'MenusAndArticlesResponse') as MenusAndArticlesResponse ;
    } else {
      return null;
    }
  }
}
