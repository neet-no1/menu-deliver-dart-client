part of swagger.api;



class ArticleApi {
  final ApiClient apiClient;

  ArticleApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 記事削除
  ///
  /// 記事を削除 認証必須 
  Future<BasicResponse> deleteArticle(DeleteArticleParam deleteArticleParam) async {
    Object postBody = deleteArticleParam;

    // verify required params are set
    if(deleteArticleParam == null) {
     throw new ApiException(400, "Missing required param: deleteArticleParam");
    }

    // create path and map variables
    String path = "/article/delete".replaceAll("{format}","json");

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
  /// 記事お気に入り追加・解除
  ///
  /// 記事のお気に入りの追加と解除を行う 認証必須 
  Future<BasicResponse> favoriteArticle(FavoriteArticleParam favoriteArticleParam) async {
    Object postBody = favoriteArticleParam;

    // verify required params are set
    if(favoriteArticleParam == null) {
     throw new ApiException(400, "Missing required param: favoriteArticleParam");
    }

    // create path and map variables
    String path = "/article/favorite".replaceAll("{format}","json");

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
  /// 記事内容取得
  ///
  /// 記事内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  Future<ArticleDataResponse> getArticle(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/article".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ArticleDataResponse') as ArticleDataResponse ;
    } else {
      return null;
    }
  }
  /// 新着記事取得
  ///
  /// 最近の投稿順(更新日時)で記事情報を取得 認証不要 
  Future<ArticlesResponse> getArticleNewArrival() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/article/newarrival".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ArticlesResponse') as ArticlesResponse ;
    } else {
      return null;
    }
  }
  /// 投稿記事一覧取得
  ///
  /// 自身が投稿した記事の一覧を取得 認証必須 
  Future<ArticlesResponse> getPostedArticles({ int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/posted/articles".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ArticlesResponse') as ArticlesResponse ;
    } else {
      return null;
    }
  }
  /// 記事投稿
  ///
  /// 記事を投稿する DBに必要なデータだけ保存して、S3にアップロードする 認証必須 
  Future<BasicResponse> postArticle(int id, String title, String contents, bool opened, { MultipartFile thumb }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(title == null) {
     throw new ApiException(400, "Missing required param: title");
    }
    if(contents == null) {
     throw new ApiException(400, "Missing required param: contents");
    }
    if(opened == null) {
     throw new ApiException(400, "Missing required param: opened");
    }

    // create path and map variables
    String path = "/article".replaceAll("{format}","json");

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
      
      if (thumb != null) {
        hasFields = true;
        mp.fields['thumb'] = thumb.field;
        mp.files.add(thumb);
      }
      
      if (contents != null) {
        hasFields = true;
        mp.fields['contents'] = parameterToString(contents);
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

if (contents != null)
        formParams['contents'] = parameterToString(contents);
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
  /// 記事検索
  ///
  /// 記事情報を検索 新着順(更新日時)で表示する 認証不要 
  Future<ArticlesResponse> searchArticles({ String keyword, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/search/articles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keyword", keyword));
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
          apiClient.deserialize(response.body, 'ArticlesResponse') as ArticlesResponse ;
    } else {
      return null;
    }
  }
}
