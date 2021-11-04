# openapi.api.RecommendApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecommendMeta**](RecommendApi.md#getrecommendmeta) | **GET** /recommend/meta | おすすめ情報表示パラメタを取得


# **getRecommendMeta**
> RecommendMetaDataResponse getRecommendMeta()

おすすめ情報表示パラメタを取得

トップのおすすめ情報を表示するための情報を取得 表示画像や表示情報を取得 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecommendApi();

try {
    final result = api_instance.getRecommendMeta();
    print(result);
} catch (e) {
    print('Exception when calling RecommendApi->getRecommendMeta: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RecommendMetaDataResponse**](RecommendMetaDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

