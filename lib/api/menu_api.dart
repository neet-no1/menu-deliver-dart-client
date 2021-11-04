//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MenuApi {
  MenuApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 献立削除
  ///
  /// 献立を削除 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteMenuParam] deleteMenuParam (required):
  Future<Response> deleteMenuWithHttpInfo(DeleteMenuParam deleteMenuParam,) async {
    // Verify required params are set.
    if (deleteMenuParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: deleteMenuParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/menu/delete';

    // ignore: prefer_final_locals
    Object postBody = deleteMenuParam;

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

  /// 献立削除
  ///
  /// 献立を削除 認証必須 
  ///
  /// Parameters:
  ///
  /// * [DeleteMenuParam] deleteMenuParam (required):
  Future<BasicResponse> deleteMenu(DeleteMenuParam deleteMenuParam,) async {
    final response = await deleteMenuWithHttpInfo(deleteMenuParam,);
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

  /// 献立お気に入り追加・解除
  ///
  /// 献立のお気に入りの追加と解除を行う 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FavoriteMenuParam] favoriteMenuParam (required):
  Future<Response> favoriteMenuWithHttpInfo(FavoriteMenuParam favoriteMenuParam,) async {
    // Verify required params are set.
    if (favoriteMenuParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: favoriteMenuParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/menu/favorite';

    // ignore: prefer_final_locals
    Object postBody = favoriteMenuParam;

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

  /// 献立お気に入り追加・解除
  ///
  /// 献立のお気に入りの追加と解除を行う 認証必須 
  ///
  /// Parameters:
  ///
  /// * [FavoriteMenuParam] favoriteMenuParam (required):
  Future<BasicResponse> favoriteMenu(FavoriteMenuParam favoriteMenuParam,) async {
    final response = await favoriteMenuWithHttpInfo(favoriteMenuParam,);
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

  /// 食品成分表情報取得
  ///
  /// 食品成分表のデータ一覧を取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCompositionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/menu/compositions';

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

  /// 食品成分表情報取得
  ///
  /// 食品成分表のデータ一覧を取得する 認証不要 
  Future<CompositionsResponse> getCompositions() async {
    final response = await getCompositionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CompositionsResponse',) as CompositionsResponse;
    
    }
    return Future<CompositionsResponse>.value();
  }

  /// 献立内容取得
  ///
  /// 献立内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID
  Future<Response> getMenuWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/menu';

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

  /// 献立内容取得
  ///
  /// 献立内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID
  Future<MenuDataResponse> getMenu(int id,) async {
    final response = await getMenuWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenuDataResponse',) as MenuDataResponse;
    
    }
    return Future<MenuDataResponse>.value();
  }

  /// 献立カテゴリ取得
  ///
  /// 献立のカテゴリ一覧を取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMenuCategoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/menu/categories';

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

  /// 献立カテゴリ取得
  ///
  /// 献立のカテゴリ一覧を取得する 認証不要 
  Future<MenuCategoriesResponse> getMenuCategories() async {
    final response = await getMenuCategoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenuCategoriesResponse',) as MenuCategoriesResponse;
    
    }
    return Future<MenuCategoriesResponse>.value();
  }

  /// 新着献立取得
  ///
  /// 最近の投稿順(更新日時)で献立情報を取得 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMenuNewArrivalWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/menu/newarrival';

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

  /// 新着献立取得
  ///
  /// 最近の投稿順(更新日時)で献立情報を取得 認証不要 
  Future<MenusResponse> getMenuNewArrival() async {
    final response = await getMenuNewArrivalWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenusResponse',) as MenusResponse;
    
    }
    return Future<MenusResponse>.value();
  }

  /// 人気献立取得
  ///
  /// 直近の閲覧数が多い献立を取得 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMenuPopularWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/menu/popular';

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

  /// 人気献立取得
  ///
  /// 直近の閲覧数が多い献立を取得 認証不要 
  Future<MenusResponse> getMenuPopular() async {
    final response = await getMenuPopularWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenusResponse',) as MenusResponse;
    
    }
    return Future<MenusResponse>.value();
  }

  /// 投稿献立一覧取得
  ///
  /// 自身が投稿した献立の一覧を取得 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   取得ページ番号(1~)
  Future<Response> getPostedMenusWithHttpInfo({ int page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/account/posted/menus';

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

  /// 投稿献立一覧取得
  ///
  /// 自身が投稿した献立の一覧を取得 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   取得ページ番号(1~)
  Future<MenusResponse> getPostedMenus({ int page, }) async {
    final response = await getPostedMenusWithHttpInfo( page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenusResponse',) as MenusResponse;
    
    }
    return Future<MenusResponse>.value();
  }

  /// 献立投稿
  ///
  /// 献立を投稿する S3へアップロードする 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID　存在しない場合は0
  ///
  /// * [String] title (required):
  ///   献立のタイトル
  ///
  /// * [int] category (required):
  ///   カテゴリID
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [bool] opened (required):
  ///   投稿/保存のフラグ
  ///
  /// * [String] subTitle:
  ///   献立のサブタイトル
  ///
  /// * [MultipartFile] thumb:
  ///   献立のサムネイル画像
  ///
  /// * [String] cookery:
  ///   作り方
  ///
  /// * [List<MultipartFile>] files:
  ///   ファイルリスト
  ///
  /// * [List<String>] filesDescription:
  ///   ファイルの説明
  Future<Response> postMenuWithHttpInfo(int id, String title, int category, String contents, bool opened, { String subTitle, MultipartFile thumb, String cookery, List<MultipartFile> files, List<String> filesDescription, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (title == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: title');
    }
    if (category == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: category');
    }
    if (contents == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contents');
    }
    if (opened == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: opened');
    }

    // ignore: prefer_const_declarations
    final path = r'/menu';

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
    if (subTitle != null) {
      hasFields = true;
      mp.fields[r'subTitle'] = parameterToString(subTitle);
    }
    if (thumb != null) {
      hasFields = true;
      mp.fields[r'thumb'] = thumb.field;
      mp.files.add(thumb);
    }
    if (category != null) {
      hasFields = true;
      mp.fields[r'category'] = parameterToString(category);
    }
    if (contents != null) {
      hasFields = true;
      mp.fields[r'contents'] = parameterToString(contents);
    }
    if (cookery != null) {
      hasFields = true;
      mp.fields[r'cookery'] = parameterToString(cookery);
    }
    if (files != null) {
      hasFields = true;
      mp.fields[r'files'] = files.field;
      mp.files.add(files);
    }
    if (filesDescription != null) {
      hasFields = true;
      mp.fields[r'filesDescription'] = parameterToString(filesDescription);
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

  /// 献立投稿
  ///
  /// 献立を投稿する S3へアップロードする 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID　存在しない場合は0
  ///
  /// * [String] title (required):
  ///   献立のタイトル
  ///
  /// * [int] category (required):
  ///   カテゴリID
  ///
  /// * [String] contents (required):
  ///   内容
  ///
  /// * [bool] opened (required):
  ///   投稿/保存のフラグ
  ///
  /// * [String] subTitle:
  ///   献立のサブタイトル
  ///
  /// * [MultipartFile] thumb:
  ///   献立のサムネイル画像
  ///
  /// * [String] cookery:
  ///   作り方
  ///
  /// * [List<MultipartFile>] files:
  ///   ファイルリスト
  ///
  /// * [List<String>] filesDescription:
  ///   ファイルの説明
  Future<BasicResponse> postMenu(int id, String title, int category, String contents, bool opened, { String subTitle, MultipartFile thumb, String cookery, List<MultipartFile> files, List<String> filesDescription, }) async {
    final response = await postMenuWithHttpInfo(id, title, category, contents, opened,  subTitle: subTitle, thumb: thumb, cookery: cookery, files: files, filesDescription: filesDescription, );
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

  /// 献立検索
  ///
  /// 献立情報を検索 タグを指定した場合、そのタグのみ取得する タグを指定しない場合、全てを取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keyword:
  ///   検索キーワード
  ///
  /// * [List<int>] categories:
  ///   検索カテゴリIDリスト
  ///
  /// * [int] page:
  ///   取得ページ番号
  Future<Response> searchMenusWithHttpInfo({ String keyword, List<int> categories, int page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/search/menus';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'keyword', keyword));
    }
    if (categories != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('csv', 'categories', categories));
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

  /// 献立検索
  ///
  /// 献立情報を検索 タグを指定した場合、そのタグのみ取得する タグを指定しない場合、全てを取得する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [String] keyword:
  ///   検索キーワード
  ///
  /// * [List<int>] categories:
  ///   検索カテゴリIDリスト
  ///
  /// * [int] page:
  ///   取得ページ番号
  Future<MenusResponse> searchMenus({ String keyword, List<int> categories, int page, }) async {
    final response = await searchMenusWithHttpInfo( keyword: keyword, categories: categories, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenusResponse',) as MenusResponse;
    
    }
    return Future<MenusResponse>.value();
  }
}
