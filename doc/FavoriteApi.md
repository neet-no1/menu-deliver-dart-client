# openapi.api.FavoriteApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**favoriteArticleIsAdded**](FavoriteApi.md#favoritearticleisadded) | **GET** /favorite/article/item | 記事のお気に入り追加状態を取得
[**favoriteMenuIsAdded**](FavoriteApi.md#favoritemenuisadded) | **GET** /favorite/menu/item | 献立のお気に入り追加状態を取得
[**getFavoriteItems**](FavoriteApi.md#getfavoriteitems) | **GET** /account/favorites | お気に入り一覧を取得


# **favoriteArticleIsAdded**
> FavoriteArticleIsAddedResponse favoriteArticleIsAdded(id)

記事のお気に入り追加状態を取得

記事がお気に入りに追加されているかを確認する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FavoriteApi();
final id = 56; // int | 記事ID

try {
    final result = api_instance.favoriteArticleIsAdded(id);
    print(result);
} catch (e) {
    print('Exception when calling FavoriteApi->favoriteArticleIsAdded: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 記事ID | 

### Return type

[**FavoriteArticleIsAddedResponse**](FavoriteArticleIsAddedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favoriteMenuIsAdded**
> FavoriteMenuIsAddedResponse favoriteMenuIsAdded(id)

献立のお気に入り追加状態を取得

献立がお気に入りに追加されているかを確認する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FavoriteApi();
final id = 56; // int | 献立ID

try {
    final result = api_instance.favoriteMenuIsAdded(id);
    print(result);
} catch (e) {
    print('Exception when calling FavoriteApi->favoriteMenuIsAdded: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 献立ID | 

### Return type

[**FavoriteMenuIsAddedResponse**](FavoriteMenuIsAddedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFavoriteItems**
> MenusAndArticlesResponse getFavoriteItems(menuPage, articlePage)

お気に入り一覧を取得

お気に入りの記事と献立の一覧を取得する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = FavoriteApi();
final menuPage = 56; // int | 献立取得ページ番号(1~)
final articlePage = 56; // int | 記事取得ページ番号(1~)

try {
    final result = api_instance.getFavoriteItems(menuPage, articlePage);
    print(result);
} catch (e) {
    print('Exception when calling FavoriteApi->getFavoriteItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuPage** | **int**| 献立取得ページ番号(1~) | [optional] [default to 1]
 **articlePage** | **int**| 記事取得ページ番号(1~) | [optional] [default to 1]

### Return type

[**MenusAndArticlesResponse**](MenusAndArticlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

