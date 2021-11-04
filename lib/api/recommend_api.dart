part of swagger.api;



class RecommendApi {
  final ApiClient apiClient;

  RecommendApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// おすすめ情報表示パラメタを取得
  ///
  /// トップのおすすめ情報を表示するための情報を取得 表示画像や表示情報を取得 認証不要 
  Future<RecommendMetaDataResponse> getRecommendMeta() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/recommend/meta".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'RecommendMetaDataResponse') as RecommendMetaDataResponse ;
    } else {
      return null;
    }
  }
}
