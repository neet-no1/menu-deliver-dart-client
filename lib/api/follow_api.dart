part of swagger.api;



class FollowApi {
  final ApiClient apiClient;

  FollowApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ユーザをフォローする
  ///
  /// ユーザをフォローする 認証必須 
  Future<BasicResponse> followUser(FollowUserParam followUserParam) async {
    Object postBody = followUserParam;

    // verify required params are set
    if(followUserParam == null) {
     throw new ApiException(400, "Missing required param: followUserParam");
    }

    // create path and map variables
    String path = "/follow".replaceAll("{format}","json");

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
  /// フォロー・フォロワー取得
  ///
  /// フォロー・フォロワーの情報を取得する 認証必須 
  Future<FollowersResponse> getFollowers({ int followPage, int followerPage }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/follow/list".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(followPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "followPage", followPage));
    }
    if(followerPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "followerPage", followerPage));
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
          apiClient.deserialize(response.body, 'FollowersResponse') as FollowersResponse ;
    } else {
      return null;
    }
  }
}
