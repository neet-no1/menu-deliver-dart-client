# openapi.api.LoginApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](LoginApi.md#login) | **POST** /login | ログイン


# **login**
> BasicResponse login(email, password)

ログイン

ログイン処理を行う 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getLoginApi();
final String email = email_example; // String | メールアドレス
final String password = password_example; // String | パスワード

try {
    final response = api.login(email, password);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LoginApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| メールアドレス | [optional] 
 **password** | **String**| パスワード | [optional] 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

