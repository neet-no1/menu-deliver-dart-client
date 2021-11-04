part of swagger.api;



class AccountApi {
  final ApiClient apiClient;

  AccountApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// メールアドレス有効性確認
  ///
  /// リクエストのワンタイムパスワードがあっているか確認する 認証不要 
  Future<BasicResponse> emailConfirm(String oneTimePassword) async {
    Object postBody = null;

    // verify required params are set
    if(oneTimePassword == null) {
     throw new ApiException(400, "Missing required param: oneTimePassword");
    }

    // create path and map variables
    String path = "/account/email/confirm".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "oneTimePassword", oneTimePassword));
    
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
          apiClient.deserialize(response.body, 'BasicResponse') as BasicResponse ;
    } else {
      return null;
    }
  }
  /// ログイン状態取得
  ///
  /// ログイン状態を取得する ログインしていればユーザのアイコンを取得する 認証不要 
  Future<AccountAuthResponse> getAccountAuth() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/auth".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'AccountAuthResponse') as AccountAuthResponse ;
    } else {
      return null;
    }
  }
  /// アカウント情報取得
  ///
  /// マイページに表示する情報を取得 認証必須 
  Future<AccountResponse> getAccountInfo() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/info".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'AccountResponse') as AccountResponse ;
    } else {
      return null;
    }
  }
  /// アカウント登録
  ///
  /// アカウント登録処理を行う メールアドレスにワンタイムパスワードを付与して、メールアドレスが有効か確認する 認証不要 
  Future<BasicResponse> registAccount(RegistAccountParam registAccountParam) async {
    Object postBody = registAccountParam;

    // verify required params are set
    if(registAccountParam == null) {
     throw new ApiException(400, "Missing required param: registAccountParam");
    }

    // create path and map variables
    String path = "/account/regist".replaceAll("{format}","json");

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
  /// パスワードリセット
  ///
  /// 新規パスワード生成しユーザのメールアドレスへ送信する 認証不要 
  Future<BasicResponse> resetPassword(PasswordResetParam passwordResetParam) async {
    Object postBody = passwordResetParam;

    // verify required params are set
    if(passwordResetParam == null) {
     throw new ApiException(400, "Missing required param: passwordResetParam");
    }

    // create path and map variables
    String path = "/password/reset".replaceAll("{format}","json");

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
  /// アカウント情報更新
  ///
  /// マイページに表示する情報を更新 認証必須 
  Future<BasicResponse> updateAccountInfo(String name, String email, MultipartFile icon) async {
    Object postBody = null;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }
    if(email == null) {
     throw new ApiException(400, "Missing required param: email");
    }
    if(icon == null) {
     throw new ApiException(400, "Missing required param: icon");
    }

    // create path and map variables
    String path = "/account/info/update".replaceAll("{format}","json");

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
      
      if (name != null) {
        hasFields = true;
        mp.fields['name'] = parameterToString(name);
      }
      
      if (email != null) {
        hasFields = true;
        mp.fields['email'] = parameterToString(email);
      }
      
      if (icon != null) {
        hasFields = true;
        mp.fields['icon'] = icon.field;
        mp.files.add(icon);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (name != null)
        formParams['name'] = parameterToString(name);
if (email != null)
        formParams['email'] = parameterToString(email);

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
  /// パスワード更新
  ///
  /// ログインパスワードを変更する 認証必須 
  Future<BasicResponse> updatePassword(UpdatePasswordParam updatePasswordParam) async {
    Object postBody = updatePasswordParam;

    // verify required params are set
    if(updatePasswordParam == null) {
     throw new ApiException(400, "Missing required param: updatePasswordParam");
    }

    // create path and map variables
    String path = "/account/password/update".replaceAll("{format}","json");

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
}
