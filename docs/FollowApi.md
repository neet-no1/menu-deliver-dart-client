# swagger.api.FollowApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**followUser**](FollowApi.md#followUser) | **POST** /follow | ユーザをフォローする
[**getFollowers**](FollowApi.md#getFollowers) | **GET** /follow/list | フォロー・フォロワー取得


# **followUser**
> BasicResponse followUser(followUserParam)

ユーザをフォローする

ユーザをフォローする 認証必須 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FollowApi();
var followUserParam = new FollowUserParam(); // FollowUserParam | 

try { 
    var result = api_instance.followUser(followUserParam);
    print(result);
} catch (e) {
    print("Exception when calling FollowApi->followUser: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new FollowApi();
var followPage = 56; // int | フォロー取得ページ番号(1~)
var followerPage = 56; // int | フォロワー取得ページ番号(1~)

try { 
    var result = api_instance.getFollowers(followPage, followerPage);
    print(result);
} catch (e) {
    print("Exception when calling FollowApi->getFollowers: $e\n");
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

