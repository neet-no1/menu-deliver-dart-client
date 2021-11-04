part of swagger.api;



class QuestionApi {
  final ApiClient apiClient;

  QuestionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 回答投稿
  ///
  /// 質問に対する回答を投稿する 認証必須 
  Future<BasicResponse> answerQuestion(int id, String contents, MultipartFile file) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(contents == null) {
     throw new ApiException(400, "Missing required param: contents");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }

    // create path and map variables
    String path = "/question/answer".replaceAll("{format}","json");

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
      
      if (contents != null) {
        hasFields = true;
        mp.fields['contents'] = parameterToString(contents);
      }
      
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (id != null)
        formParams['id'] = parameterToString(id);
if (contents != null)
        formParams['contents'] = parameterToString(contents);

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
  /// ベストアンサー決定
  ///
  /// ベストアンサーを決定する 認証必須 
  Future<BasicResponse> decideBestAnswer(DecideBestAnswerParam decideBestAnswerParam) async {
    Object postBody = decideBestAnswerParam;

    // verify required params are set
    if(decideBestAnswerParam == null) {
     throw new ApiException(400, "Missing required param: decideBestAnswerParam");
    }

    // create path and map variables
    String path = "/question/bestanswer".replaceAll("{format}","json");

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
  /// 回答一覧取得
  ///
  /// 質問の回答一覧を取得する 認証不要 
  Future<AnswersResponse> getAnswers(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/question/answers".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'AnswersResponse') as AnswersResponse ;
    } else {
      return null;
    }
  }
  /// ベストアンサー取得
  ///
  /// ベストアンサーが存在するか、しないか 存在する場合は回答IDを取得する 認証不要 
  Future<BestAnswerResponse> getBestAnswer(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/question/bestanswer".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'BestAnswerResponse') as BestAnswerResponse ;
    } else {
      return null;
    }
  }
  /// 質問内容取得
  ///
  /// 質問の内容と回答の一覧を取得する 投稿日順に取得する 認証不要 
  Future<QuestionDataResponse> getQuestion(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/question".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'QuestionDataResponse') as QuestionDataResponse ;
    } else {
      return null;
    }
  }
  /// 質問カテゴリ取得
  ///
  /// 質問のカテゴリ一覧を取得する 認証不要 
  Future<QuestionCategoriesResponse> getQuestionCategories() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/question/categories".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'QuestionCategoriesResponse') as QuestionCategoriesResponse ;
    } else {
      return null;
    }
  }
  /// 質問投稿
  ///
  /// 質問を投稿する 認証必須 
  Future<BasicResponse> postQuestion(String contents, MultipartFile file) async {
    Object postBody = null;

    // verify required params are set
    if(contents == null) {
     throw new ApiException(400, "Missing required param: contents");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }

    // create path and map variables
    String path = "/question".replaceAll("{format}","json");

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
      
      if (contents != null) {
        hasFields = true;
        mp.fields['contents'] = parameterToString(contents);
      }
      
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (contents != null)
        formParams['contents'] = parameterToString(contents);

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
  /// 質問検索
  ///
  /// 質問情報を検索 タグを指定した場合、そのタグのみ表示する タグを指定しない場合、新着、未解決、解決済みの全てを取得する 認証不要 
  Future<QuestionsResponse> searchQuestions(int pageNewArrival, int pageUnsolved, int pageSolved, { List<int> tags, String keyword }) async {
    Object postBody = null;

    // verify required params are set
    if(pageNewArrival == null) {
     throw new ApiException(400, "Missing required param: pageNewArrival");
    }
    if(pageUnsolved == null) {
     throw new ApiException(400, "Missing required param: pageUnsolved");
    }
    if(pageSolved == null) {
     throw new ApiException(400, "Missing required param: pageSolved");
    }

    // create path and map variables
    String path = "/search/questions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageNewArrival", pageNewArrival));
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageUnsolved", pageUnsolved));
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSolved", pageSolved));
    if(tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "tags", tags));
    }
    if(keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keyword", keyword));
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
          apiClient.deserialize(response.body, 'QuestionsResponse') as QuestionsResponse ;
    } else {
      return null;
    }
  }
}
