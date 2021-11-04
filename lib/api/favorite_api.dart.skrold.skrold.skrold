//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FavoriteApi {
  FavoriteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 記事のお気に入り追加状態を取得
  ///
  /// 記事がお気に入りに追加されているかを確認する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID
  Future<Response> favoriteArticleIsAddedWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/favorite/article/item';

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

  /// 記事のお気に入り追加状態を取得
  ///
  /// 記事がお気に入りに追加されているかを確認する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   記事ID
  Future<FavoriteArticleIsAddedResponse> favoriteArticleIsAdded(int id,) async {
    final response = await favoriteArticleIsAddedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteArticleIsAddedResponse',) as FavoriteArticleIsAddedResponse;
    
    }
    return Future<FavoriteArticleIsAddedResponse>.value();
  }

  /// 献立のお気に入り追加状態を取得
  ///
  /// 献立がお気に入りに追加されているかを確認する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID
  Future<Response> favoriteMenuIsAddedWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/favorite/menu/item';

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

  /// 献立のお気に入り追加状態を取得
  ///
  /// 献立がお気に入りに追加されているかを確認する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   献立ID
  Future<FavoriteMenuIsAddedResponse> favoriteMenuIsAdded(int id,) async {
    final response = await favoriteMenuIsAddedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FavoriteMenuIsAddedResponse',) as FavoriteMenuIsAddedResponse;
    
    }
    return Future<FavoriteMenuIsAddedResponse>.value();
  }

  /// お気に入り一覧を取得
  ///
  /// お気に入りの記事と献立の一覧を取得する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] menuPage:
  ///   献立取得ページ番号(1~)
  ///
  /// * [int] articlePage:
  ///   記事取得ページ番号(1~)
  Future<Response> getFavoriteItemsWithHttpInfo({ int menuPage, int articlePage, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/account/favorites';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (menuPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'menuPage', menuPage));
    }
    if (articlePage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'articlePage', articlePage));
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

  /// お気に入り一覧を取得
  ///
  /// お気に入りの記事と献立の一覧を取得する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] menuPage:
  ///   献立取得ページ番号(1~)
  ///
  /// * [int] articlePage:
  ///   記事取得ページ番号(1~)
  Future<MenusAndArticlesResponse> getFavoriteItems({ int menuPage, int articlePage, }) async {
    final response = await getFavoriteItemsWithHttpInfo( menuPage: menuPage, articlePage: articlePage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MenusAndArticlesResponse',) as MenusAndArticlesResponse;
    
    }
    return Future<MenusAndArticlesResponse>.value();
  }
}
