//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuestionApi {
  QuestionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 回答投稿
  ///
  /// 質問に対する回答を投稿する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [MultipartFile] file (required):
  ///   質問内容の画像
  Future<Response> answerQuestionWithHttpInfo(int id, String contents, MultipartFile file,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (contents == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contents');
    }
    if (file == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: file');
    }

    // ignore: prefer_const_declarations
    final path = r'/question/answer';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (id != null) {
      hasFields = true;
      mp.fields[r'id'] = parameterToString(id);
    }
    if (contents != null) {
      hasFields = true;
      mp.fields[r'contents'] = parameterToString(contents);
    }
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 回答投稿
  ///
  /// 質問に対する回答を投稿する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [MultipartFile] file (required):
  ///   質問内容の画像
  Future<BasicResponse> answerQuestion(int id, String contents, MultipartFile file,) async {
    final response = await answerQuestionWithHttpInfo(id, contents, file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BasicResponse',) as BasicResponse;
    
    }
    return Future<BasicResponse>.value();
  }

  /// ベストアンサー決定
  ///
  /// ベストアンサーを決定する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DecideBestAnswerParam] decideBestAnswerParam (required):
  Future<Response> decideBestAnswerWithHttpInfo(DecideBestAnswerParam decideBestAnswerParam,) async {
    // Verify required params are set.
    if (decideBestAnswerParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: decideBestAnswerParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/question/bestanswer';

    // ignore: prefer_final_locals
    Object postBody = decideBestAnswerParam;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// ベストアンサー決定
  ///
  /// ベストアンサーを決定する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [DecideBestAnswerParam] decideBestAnswerParam (required):
  Future<BasicResponse> decideBestAnswer(DecideBestAnswerParam decideBestAnswerParam,) async {
    final response = await decideBestAnswerWithHttpInfo(decideBestAnswerParam,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BasicResponse',) as BasicResponse;
    
    }
    return Future<BasicResponse>.value();
  }

  /// 回答一覧取得
  ///
  /// 質問の回答一覧を取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<Response> getAnswersWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/question/answers';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 回答一覧取得
  ///
  /// 質問の回答一覧を取得する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<AnswersResponse> getAnswers(int id,) async {
    final response = await getAnswersWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AnswersResponse',) as AnswersResponse;
    
    }
    return Future<AnswersResponse>.value();
  }

  /// ベストアンサー取得
  ///
  /// ベストアンサーが存在するか、しないか 存在する場合は回答IDを取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<Response> getBestAnswerWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/question/bestanswer';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// ベストアンサー取得
  ///
  /// ベストアンサーが存在するか、しないか 存在する場合は回答IDを取得する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<BestAnswerResponse> getBestAnswer(int id,) async {
    final response = await getBestAnswerWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BestAnswerResponse',) as BestAnswerResponse;
    
    }
    return Future<BestAnswerResponse>.value();
  }

  /// 質問内容取得
  ///
  /// 質問の内容と回答の一覧を取得する 投稿日順に取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<Response> getQuestionWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/question';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 質問内容取得
  ///
  /// 質問の内容と回答の一覧を取得する 投稿日順に取得する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   質問ID
  Future<QuestionDataResponse> getQuestion(int id,) async {
    final response = await getQuestionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionDataResponse',) as QuestionDataResponse;
    
    }
    return Future<QuestionDataResponse>.value();
  }

  /// 質問カテゴリ取得
  ///
  /// 質問のカテゴリ一覧を取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getQuestionCategoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/question/categories';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 質問カテゴリ取得
  ///
  /// 質問のカテゴリ一覧を取得する 認証不要 
  Future<QuestionCategoriesResponse> getQuestionCategories() async {
    final response = await getQuestionCategoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionCategoriesResponse',) as QuestionCategoriesResponse;
    
    }
    return Future<QuestionCategoriesResponse>.value();
  }

  /// 質問投稿
  ///
  /// 質問を投稿する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [MultipartFile] file (required):
  ///   質問内容の画像
  Future<Response> postQuestionWithHttpInfo(String contents, MultipartFile file,) async {
    // Verify required params are set.
    if (contents == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contents');
    }
    if (file == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: file');
    }

    // ignore: prefer_const_declarations
    final path = r'/question';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (contents != null) {
      hasFields = true;
      mp.fields[r'contents'] = parameterToString(contents);
    }
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 質問投稿
  ///
  /// 質問を投稿する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [MultipartFile] file (required):
  ///   質問内容の画像
  Future<BasicResponse> postQuestion(String contents, MultipartFile file,) async {
    final response = await postQuestionWithHttpInfo(contents, file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BasicResponse',) as BasicResponse;
    
    }
    return Future<BasicResponse>.value();
  }

  /// 質問検索
  ///
  /// 質問情報を検索 タグを指定した場合、そのタグのみ表示する タグを指定しない場合、新着、未解決、解決済みの全てを取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageNewArrival (required):
  ///   新着の取得ページ番号
  ///
  /// * [int] pageUnsolved (required):
  ///   未解決の取得ページ番号
  ///
  /// * [int] pageSolved (required):
  ///   解決済みの取得ページ番号
  ///
  /// * [List<int>] tags:
  ///   選択したタグIDの配列
  ///
  /// * [String] keyword:
  ///   検索キーワード
  Future<Response> searchQuestionsWithHttpInfo(int pageNewArrival, int pageUnsolved, int pageSolved, { List<int> tags, String keyword, }) async {
    // Verify required params are set.
    if (pageNewArrival == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pageNewArrival');
    }
    if (pageUnsolved == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pageUnsolved');
    }
    if (pageSolved == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: pageSolved');
    }

    // ignore: prefer_const_declarations
    final path = r'/search/questions';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageNewArrival', pageNewArrival));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageUnsolved', pageUnsolved));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSolved', pageSolved));
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('csv', 'tags', tags));
    }
    if (keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keyword', keyword));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// 質問検索
  ///
  /// 質問情報を検索 タグを指定した場合、そのタグのみ表示する タグを指定しない場合、新着、未解決、解決済みの全てを取得する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [int] pageNewArrival (required):
  ///   新着の取得ページ番号
  ///
  /// * [int] pageUnsolved (required):
  ///   未解決の取得ページ番号
  ///
  /// * [int] pageSolved (required):
  ///   解決済みの取得ページ番号
  ///
  /// * [List<int>] tags:
  ///   選択したタグIDの配列
  ///
  /// * [String] keyword:
  ///   検索キーワード
  Future<QuestionsResponse> searchQuestions(int pageNewArrival, int pageUnsolved, int pageSolved, { List<int> tags, String keyword, }) async {
    final response = await searchQuestionsWithHttpInfo(pageNewArrival, pageUnsolved, pageSolved,  tags: tags, keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QuestionsResponse',) as QuestionsResponse;
    
    }
    return Future<QuestionsResponse>.value();
  }
}
