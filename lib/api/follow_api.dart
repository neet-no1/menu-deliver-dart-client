//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FollowApi {
  FollowApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// ユーザをフォローする
  ///
  /// ユーザをフォローする 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FollowUserParam] followUserParam (required):
  Future<Response> followUserWithHttpInfo(FollowUserParam followUserParam,) async {
    // Verify required params are set.
    if (followUserParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: followUserParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/follow';

    // ignore: prefer_final_locals
    Object postBody = followUserParam;

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

  /// ユーザをフォローする
  ///
  /// ユーザをフォローする 認証必須 
  ///
  /// Parameters:
  ///
  /// * [FollowUserParam] followUserParam (required):
  Future<BasicResponse> followUser(FollowUserParam followUserParam,) async {
    final response = await followUserWithHttpInfo(followUserParam,);
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

  /// フォロー・フォロワー取得
  ///
  /// フォロー・フォロワーの情報を取得する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] followPage:
  ///   フォロー取得ページ番号(1~)
  ///
  /// * [int] followerPage:
  ///   フォロワー取得ページ番号(1~)
  Future<Response> getFollowersWithHttpInfo({ int followPage, int followerPage, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/follow/list';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (followPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'followPage', followPage));
    }
    if (followerPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'followerPage', followerPage));
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

  /// フォロー・フォロワー取得
  ///
  /// フォロー・フォロワーの情報を取得する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [int] followPage:
  ///   フォロー取得ページ番号(1~)
  ///
  /// * [int] followerPage:
  ///   フォロワー取得ページ番号(1~)
  Future<FollowersResponse> getFollowers({ int followPage, int followerPage, }) async {
    final response = await getFollowersWithHttpInfo( followPage: followPage, followerPage: followerPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FollowersResponse',) as FollowersResponse;
    
    }
    return Future<FollowersResponse>.value();
  }
}
