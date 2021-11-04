# openapi.api.AccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailConfirm**](AccountApi.md#emailconfirm) | **GET** /account/email/confirm | メールアドレス有効性確認
[**getAccountAuth**](AccountApi.md#getaccountauth) | **GET** /account/auth | ログイン状態取得
[**getAccountInfo**](AccountApi.md#getaccountinfo) | **GET** /account/info | アカウント情報取得
[**registAccount**](AccountApi.md#registaccount) | **POST** /account/regist | アカウント登録
[**resetPassword**](AccountApi.md#resetpassword) | **POST** /password/reset | パスワードリセット
[**updateAccountInfo**](AccountApi.md#updateaccountinfo) | **POST** /account/info/update | アカウント情報更新
[**updatePassword**](AccountApi.md#updatepassword) | **POST** /account/password/update | パスワード更新


# **emailConfirm**
> BasicResponse emailConfirm(oneTimePassword)

メールアドレス有効性確認

リクエストのワンタイムパスワードがあっているか確認する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final String oneTimePassword = oneTimePassword_example; // String | メールアドレスの有効性確認パスワード

try {
    final response = api.emailConfirm(oneTimePassword);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->emailConfirm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oneTimePassword** | **String**| メールアドレスの有効性確認パスワード | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountAuth**
> AccountAuthResponse getAccountAuth()

ログイン状態取得

ログイン状態を取得する ログインしていればユーザのアイコンを取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();

try {
    final response = api.getAccountAuth();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->getAccountAuth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountAuthResponse**](AccountAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInfo**
> AccountResponse getAccountInfo()

アカウント情報取得

マイページに表示する情報を取得 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();

try {
    final response = api.getAccountInfo();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->getAccountInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registAccount**
> BasicResponse registAccount(registAccountParam)

アカウント登録

アカウント登録処理を行う メールアドレスにワンタイムパスワードを付与して、メールアドレスが有効か確認する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final RegistAccountParam registAccountParam = ; // RegistAccountParam | 

try {
    final response = api.registAccount(registAccountParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->registAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registAccountParam** | [**RegistAccountParam**](RegistAccountParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> BasicResponse resetPassword(passwordResetParam)

パスワードリセット

新規パスワード生成しユーザのメールアドレスへ送信する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final PasswordResetParam passwordResetParam = ; // PasswordResetParam | 

try {
    final response = api.resetPassword(passwordResetParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordResetParam** | [**PasswordResetParam**](PasswordResetParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountInfo**
> BasicResponse updateAccountInfo(name, email, icon)

アカウント情報更新

マイページに表示する情報を更新 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final String name = name_example; // String | ニックネーム
final String email = email_example; // String | メールアドレス
final MultipartFile icon = BINARY_DATA_HERE; // MultipartFile | ユーザアイコン画像ファイル

try {
    final response = api.updateAccountInfo(name, email, icon);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->updateAccountInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| ニックネーム | 
 **email** | **String**| メールアドレス | 
 **icon** | **MultipartFile**| ユーザアイコン画像ファイル | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePassword**
> BasicResponse updatePassword(updatePasswordParam)

パスワード更新

ログインパスワードを変更する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final UpdatePasswordParam updatePasswordParam = ; // UpdatePasswordParam | 

try {
    final response = api.updatePassword(updatePasswordParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->updatePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updatePasswordParam** | [**UpdatePasswordParam**](UpdatePasswordParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

