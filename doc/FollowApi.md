# openapi.api.FollowApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**followUser**](FollowApi.md#followuser) | **POST** /follow | ユーザをフォローする
[**getFollowers**](FollowApi.md#getfollowers) | **GET** /follow/list | フォロー・フォロワー取得


# **followUser**
> BasicResponse followUser(followUserParam)

ユーザをフォローする

ユーザをフォローする 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FollowApi();
final followUserParam = FollowUserParam(); // FollowUserParam | 

try {
    final result = api_instance.followUser(followUserParam);
    print(result);
} catch (e) {
    print('Exception when calling FollowApi->followUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **followUserParam** | [**FollowUserParam**](FollowUserParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFollowers**
> FollowersResponse getFollowers(followPage, followerPage)

フォロー・フォロワー取得

フォロー・フォロワーの情報を取得する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FollowApi();
final followPage = 56; // int | フォロー取得ページ番号(1~)
final followerPage = 56; // int | フォロワー取得ページ番号(1~)

try {
    final result = api_instance.getFollowers(followPage, followerPage);
    print(result);
} catch (e) {
    print('Exception when calling FollowApi->getFollowers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **followPage** | **int**| フォロー取得ページ番号(1~) | [optional] [default to 1]
 **followerPage** | **int**| フォロワー取得ページ番号(1~) | [optional] [default to 1]

### Return type

[**FollowersResponse**](FollowersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

