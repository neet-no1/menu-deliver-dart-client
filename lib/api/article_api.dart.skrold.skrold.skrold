//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ArticleApi {
  ArticleApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 記事削除
  ///
  /// 記事を削除 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteArticleParam] deleteArticleParam (required):
  Future<Response> deleteArticleWithHttpInfo(DeleteArticleParam deleteArticleParam,) async {
    // Verify required params are set.
    if (deleteArticleParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: deleteArticleParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/article/delete';

    // ignore: prefer_final_locals
    Object postBody = deleteArticleParam;

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

  /// 記事削除
  ///
  /// 記事を削除 認証必須 
  ///
  /// Parameters:
  ///
  /// * [DeleteArticleParam] deleteArticleParam (required):
  Future<BasicResponse> deleteArticle(DeleteArticleParam deleteArticleParam,) async {
    final response = await deleteArticleWithHttpInfo(deleteArticleParam,);
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

  /// 記事お気に入り追加・解除
  ///
  /// 記事のお気に入りの追加と解除を行う 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FavoriteArticleParam] favoriteArticleParam (required):
  Future<Response> favoriteArticleWithHttpInfo(FavoriteArticleParam favoriteArticleParam,) async {
    // Verify required params are set.
    if (favoriteArticleParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: favoriteArticleParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/article/favorite';

    // ignore: prefer_final_locals
    Object postBody = favoriteArticleParam;

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

  /// 記事お気に入り追加・解除
  ///
  /// 記事のお気に入りの追加と解除を行う 認証必須 
  ///
  /// Parameters:
  ///
  /// * [FavoriteArticleParam] favoriteArticleParam (required):
  Future<BasicResponse> favoriteArticle(FavoriteArticleParam favoriteArticleParam,) async {
    final response = await favoriteArticleWithHttpInfo(favoriteArticleParam,);
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

  /// 記事内容取得
  ///
  /// 記事内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID
  Future<Response> getArticleWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/article';

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

  /// 記事内容取得
  ///
  /// 記事内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID
  Future<ArticleDataResponse> getArticle(int id,) async {
    final response = await getArticleWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticleDataResponse',) as ArticleDataResponse;
    
    }
    return Future<ArticleDataResponse>.value();
  }

  /// 新着記事取得
  ///
  /// 最近の投稿順(更新日時)で記事情報を取得 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getArticleNewArrivalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/article/newarrival';

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

  /// 新着記事取得
  ///
  /// 最近の投稿順(更新日時)で記事情報を取得 認証不要 
  Future<ArticlesResponse> getArticleNewArrival() async {
    final response = await getArticleNewArrivalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticlesResponse',) as ArticlesResponse;
    
    }
    return Future<ArticlesResponse>.value();
  }

  /// 投稿記事一覧取得
  ///
  /// 自身が投稿した記事の一覧を取得 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   取得ページ番号(1~)
  Future<Response> getPostedArticlesWithHttpInfo({ int page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/account/posted/articles';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
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

  /// 投稿記事一覧取得
  ///
  /// 自身が投稿した記事の一覧を取得 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   取得ページ番号(1~)
  Future<ArticlesResponse> getPostedArticles({ int page, }) async {
    final response = await getPostedArticlesWithHttpInfo( page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticlesResponse',) as ArticlesResponse;
    
    }
    return Future<ArticlesResponse>.value();
  }

  /// 記事投稿
  ///
  /// 記事を投稿する DBに必要なデータだけ保存して、S3にアップロードする 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID　存在しない場合は0
  ///
  /// * [String] title (required):
  ///   記事のタイトル
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [bool] opened (required):
  ///   投稿/保存のフラグ
  ///
  /// * [MultipartFile] thumb:
  ///   記事のサムネイル画像
  Future<Response> postArticleWithHttpInfo(int id, String title, String contents, bool opened, { MultipartFile thumb, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (title == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: title');
    }
    if (contents == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contents');
    }
    if (opened == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: opened');
    }

    // ignore: prefer_const_declarations
    final path = r'/article';

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
    if (title != null) {
      hasFields = true;
      mp.fields[r'title'] = parameterToString(title);
    }
    if (thumb != null) {
      hasFields = true;
      mp.fields[r'thumb'] = thumb.field;
      mp.files.add(thumb);
    }
    if (contents != null) {
      hasFields = true;
      mp.fields[r'contents'] = parameterToString(contents);
    }
    if (opened != null) {
      hasFields = true;
      mp.fields[r'opened'] = parameterToString(opened);
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

  /// 記事投稿
  ///
  /// 記事を投稿する DBに必要なデータだけ保存して、S3にアップロードする 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID　存在しない場合は0
  ///
  /// * [String] title (required):
  ///   記事のタイトル
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [bool] opened (required):
  ///   投稿/保存のフラグ
  ///
  /// * [MultipartFile] thumb:
  ///   記事のサムネイル画像
  Future<BasicResponse> postArticle(int id, String title, String contents, bool opened, { MultipartFile thumb, }) async {
    final response = await postArticleWithHttpInfo(id, title, contents, opened,  thumb: thumb, );
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

  /// 記事検索
  ///
  /// 記事情報を検索 新着順(更新日時)で表示する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyword:
  ///   検索キーワード
  ///
  /// * [int] page:
  ///   取得ページ番号
  Future<Response> searchArticlesWithHttpInfo({ String keyword, int page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/search/articles';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keyword', keyword));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
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

  /// 記事検索
  ///
  /// 記事情報を検索 新着順(更新日時)で表示する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [String] keyword:
  ///   検索キーワード
  ///
  /// * [int] page:
  ///   取得ページ番号
  Future<ArticlesResponse> searchArticles({ String keyword, int page, }) async {
    final response = await searchArticlesWithHttpInfo( keyword: keyword, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ArticlesResponse',) as ArticlesResponse;
    
    }
    return Future<ArticlesResponse>.value();
  }
}
