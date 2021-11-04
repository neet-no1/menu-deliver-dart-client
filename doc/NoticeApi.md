# openapi.api.NoticeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotices**](NoticeApi.md#getnotices) | **GET** /notice | お知らせ情報取得


# **getNotices**
> NoticesResponse getNotices()

お知らせ情報取得

お知らせ情報を取得する 複数のお知らせを取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getNoticeApi();

try {
    final response = api.getNotices();
    print(response);
} catch on DioError (e) {
    print('Exception when calling NoticeApi->getNotices: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NoticesResponse**](NoticesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

