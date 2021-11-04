part of swagger.api;



class LoginApi {
  final ApiClient apiClient;

  LoginApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ログイン
  ///
  /// ログイン処理を行う 認証不要 
  Future<BasicResponse> login({ String email, String password }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/login".replaceAll("{format}","json");

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
      
      if (email != null) {
        hasFields = true;
        mp.fields['email'] = parameterToString(email);
      }
      
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = parameterToString(password);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (email != null)
        formParams['email'] = parameterToString(email);
if (password != null)
        formParams['password'] = parameterToString(password);
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
}
