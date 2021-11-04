//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountApi {
  AccountApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// メールアドレス有効性確認
  ///
  /// リクエストのワンタイムパスワードがあっているか確認する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] oneTimePassword (required):
  ///   メールアドレスの有効性確認パスワード
  Future<Response> emailConfirmWithHttpInfo(String oneTimePassword,) async {
    // Verify required params are set.
    if (oneTimePassword == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: oneTimePassword');
    }

    // ignore: prefer_const_declarations
    final path = r'/account/email/confirm';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'oneTimePassword', oneTimePassword));

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

  /// メールアドレス有効性確認
  ///
  /// リクエストのワンタイムパスワードがあっているか確認する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [String] oneTimePassword (required):
  ///   メールアドレスの有効性確認パスワード
  Future<BasicResponse> emailConfirm(String oneTimePassword,) async {
    final response = await emailConfirmWithHttpInfo(oneTimePassword,);
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

  /// ログイン状態取得
  ///
  /// ログイン状態を取得する ログインしていればユーザのアイコンを取得する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountAuthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/account/auth';

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

  /// ログイン状態取得
  ///
  /// ログイン状態を取得する ログインしていればユーザのアイコンを取得する 認証不要 
  Future<AccountAuthResponse> getAccountAuth() async {
    final response = await getAccountAuthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountAuthResponse',) as AccountAuthResponse;
    
    }
    return Future<AccountAuthResponse>.value();
  }

  /// アカウント情報取得
  ///
  /// マイページに表示する情報を取得 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/account/info';

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

  /// アカウント情報取得
  ///
  /// マイページに表示する情報を取得 認証必須 
  Future<AccountResponse> getAccountInfo() async {
    final response = await getAccountInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountResponse',) as AccountResponse;
    
    }
    return Future<AccountResponse>.value();
  }

  /// アカウント登録
  ///
  /// アカウント登録処理を行う メールアドレスにワンタイムパスワードを付与して、メールアドレスが有効か確認する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegistAccountParam] registAccountParam (required):
  Future<Response> registAccountWithHttpInfo(RegistAccountParam registAccountParam,) async {
    // Verify required params are set.
    if (registAccountParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: registAccountParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/account/regist';

    // ignore: prefer_final_locals
    Object postBody = registAccountParam;

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

  /// アカウント登録
  ///
  /// アカウント登録処理を行う メールアドレスにワンタイムパスワードを付与して、メールアドレスが有効か確認する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [RegistAccountParam] registAccountParam (required):
  Future<BasicResponse> registAccount(RegistAccountParam registAccountParam,) async {
    final response = await registAccountWithHttpInfo(registAccountParam,);
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

  /// パスワードリセット
  ///
  /// 新規パスワード生成しユーザのメールアドレスへ送信する 認証不要 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordResetParam] passwordResetParam (required):
  Future<Response> resetPasswordWithHttpInfo(PasswordResetParam passwordResetParam,) async {
    // Verify required params are set.
    if (passwordResetParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: passwordResetParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/password/reset';

    // ignore: prefer_final_locals
    Object postBody = passwordResetParam;

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

  /// パスワードリセット
  ///
  /// 新規パスワード生成しユーザのメールアドレスへ送信する 認証不要 
  ///
  /// Parameters:
  ///
  /// * [PasswordResetParam] passwordResetParam (required):
  Future<BasicResponse> resetPassword(PasswordResetParam passwordResetParam,) async {
    final response = await resetPasswordWithHttpInfo(passwordResetParam,);
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

  /// アカウント情報更新
  ///
  /// マイページに表示する情報を更新 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   ニックネーム
  ///
  /// * [String] email (required):
  ///   メールアドレス
  ///
  /// * [MultipartFile] icon (required):
  ///   ユーザアイコン画像ファイル
  Future<Response> updateAccountInfoWithHttpInfo(String name, String email, MultipartFile icon,) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }
    if (email == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: email');
    }
    if (icon == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: icon');
    }

    // ignore: prefer_const_declarations
    final path = r'/account/info/update';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (name != null) {
      hasFields = true;
      mp.fields[r'name'] = parameterToString(name);
    }
    if (email != null) {
      hasFields = true;
      mp.fields[r'email'] = parameterToString(email);
    }
    if (icon != null) {
      hasFields = true;
      mp.fields[r'icon'] = icon.field;
      mp.files.add(icon);
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

  /// アカウント情報更新
  ///
  /// マイページに表示する情報を更新 認証必須 
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   ニックネーム
  ///
  /// * [String] email (required):
  ///   メールアドレス
  ///
  /// * [MultipartFile] icon (required):
  ///   ユーザアイコン画像ファイル
  Future<BasicResponse> updateAccountInfo(String name, String email, MultipartFile icon,) async {
    final response = await updateAccountInfoWithHttpInfo(name, email, icon,);
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

  /// パスワード更新
  ///
  /// ログインパスワードを変更する 認証必須 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdatePasswordParam] updatePasswordParam (required):
  Future<Response> updatePasswordWithHttpInfo(UpdatePasswordParam updatePasswordParam,) async {
    // Verify required params are set.
    if (updatePasswordParam == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: updatePasswordParam');
    }

    // ignore: prefer_const_declarations
    final path = r'/account/password/update';

    // ignore: prefer_final_locals
    Object postBody = updatePasswordParam;

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

  /// パスワード更新
  ///
  /// ログインパスワードを変更する 認証必須 
  ///
  /// Parameters:
  ///
  /// * [UpdatePasswordParam] updatePasswordParam (required):
  Future<BasicResponse> updatePassword(UpdatePasswordParam updatePasswordParam,) async {
    final response = await updatePasswordWithHttpInfo(updatePasswordParam,);
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
