//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RecommendApi {
  RecommendApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// おすすめ情報表示パラメタを取得
  ///
  /// トップのおすすめ情報を表示するための情報を取得 表示画像や表示情報を取得 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRecommendMetaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/recommend/meta';

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

  /// おすすめ情報表示パラメタを取得
  ///
  /// トップのおすすめ情報を表示するための情報を取得 表示画像や表示情報を取得 認証不要 
  Future<RecommendMetaDataResponse> getRecommendMeta() async {
    final response = await getRecommendMetaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecommendMetaDataResponse',) as RecommendMetaDataResponse;
    
    }
    return Future<RecommendMetaDataResponse>.value();
  }
}
