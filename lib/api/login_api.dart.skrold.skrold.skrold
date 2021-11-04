//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LoginApi {
  LoginApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// ログイン
  ///
  /// ログイン処理を行う 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   メールアドレス
  ///
  /// * [String] password:
  ///   パスワード
  Future<Response> loginWithHttpInfo({ String email, String password, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/login';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (email != null) {
      hasFields = true;
      mp.fields[r'email'] = parameterToString(email);
    }
    if (password != null) {
      hasFields = true;
      mp.fields[r'password'] = parameterToString(password);
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

  /// ログイン
  ///
  /// ログイン処理を行う 認証不要 
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   メールアドレス
  ///
  /// * [String] password:
  ///   パスワード
  Future<BasicResponse> login({ String email, String password, }) async {
    final response = await loginWithHttpInfo( email: email, password: password, );
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
}
