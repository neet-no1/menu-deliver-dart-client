part of swagger.api;



class NoticeApi {
  final ApiClient apiClient;

  NoticeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// お知らせ情報取得
  ///
  /// お知らせ情報を取得する 複数のお知らせを取得する 認証不要 
  Future<NoticesResponse> getNotices() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/notice".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'NoticesResponse') as NoticesResponse ;
    } else {
      return null;
    }
  }
}
