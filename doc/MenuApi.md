# openapi.api.MenuApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMenu**](MenuApi.md#deletemenu) | **POST** /menu/delete | 献立削除
[**favoriteMenu**](MenuApi.md#favoritemenu) | **POST** /menu/favorite | 献立お気に入り追加・解除
[**getCompositions**](MenuApi.md#getcompositions) | **GET** /menu/compositions | 食品成分表情報取得
[**getMenu**](MenuApi.md#getmenu) | **GET** /menu | 献立内容取得
[**getMenuCategories**](MenuApi.md#getmenucategories) | **GET** /menu/categories | 献立カテゴリ取得
[**getMenuNewArrival**](MenuApi.md#getmenunewarrival) | **GET** /menu/newarrival | 新着献立取得
[**getMenuPopular**](MenuApi.md#getmenupopular) | **GET** /menu/popular | 人気献立取得
[**getPostedMenus**](MenuApi.md#getpostedmenus) | **GET** /account/posted/menus | 投稿献立一覧取得
[**postMenu**](MenuApi.md#postmenu) | **POST** /menu | 献立投稿
[**searchMenus**](MenuApi.md#searchmenus) | **GET** /search/menus | 献立検索


# **deleteMenu**
> BasicResponse deleteMenu(deleteMenuParam)

献立削除

献立を削除 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final DeleteMenuParam deleteMenuParam = ; // DeleteMenuParam | 

try {
    final response = api.deleteMenu(deleteMenuParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->deleteMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteMenuParam** | [**DeleteMenuParam**](DeleteMenuParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favoriteMenu**
> BasicResponse favoriteMenu(favoriteMenuParam)

献立お気に入り追加・解除

献立のお気に入りの追加と解除を行う 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final FavoriteMenuParam favoriteMenuParam = ; // FavoriteMenuParam | 

try {
    final response = api.favoriteMenu(favoriteMenuParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->favoriteMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **favoriteMenuParam** | [**FavoriteMenuParam**](FavoriteMenuParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompositions**
> CompositionsResponse getCompositions()

食品成分表情報取得

食品成分表のデータ一覧を取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();

try {
    final response = api.getCompositions();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getCompositions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompositionsResponse**](CompositionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenu**
> MenuDataResponse getMenu(id)

献立内容取得

献立内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final int id = 56; // int | 献立ID

try {
    final response = api.getMenu(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 献立ID | 

### Return type

[**MenuDataResponse**](MenuDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuCategories**
> MenuCategoriesResponse getMenuCategories()

献立カテゴリ取得

献立のカテゴリ一覧を取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();

try {
    final response = api.getMenuCategories();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getMenuCategories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenuCategoriesResponse**](MenuCategoriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuNewArrival**
> MenusResponse getMenuNewArrival()

新着献立取得

最近の投稿順(更新日時)で献立情報を取得 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();

try {
    final response = api.getMenuNewArrival();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getMenuNewArrival: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenusResponse**](MenusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuPopular**
> MenusResponse getMenuPopular()

人気献立取得

直近の閲覧数が多い献立を取得 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();

try {
    final response = api.getMenuPopular();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getMenuPopular: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenusResponse**](MenusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostedMenus**
> MenusResponse getPostedMenus(page)

投稿献立一覧取得

自身が投稿した献立の一覧を取得 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final int page = 56; // int | 取得ページ番号(1~)

try {
    final response = api.getPostedMenus(page);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->getPostedMenus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| 取得ページ番号(1~) | [optional] [default to 1]

### Return type

[**MenusResponse**](MenusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMenu**
> BasicResponse postMenu(id, title, category, contents, opened, subTitle, thumb, cookery, files, filesDescription)

献立投稿

献立を投稿する S3へアップロードする 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final int id = 56; // int | 献立ID　存在しない場合は0
final String title = title_example; // String | 献立のタイトル
final int category = 56; // int | カテゴリID
final String contents = contents_example; // String | 内容
final bool opened = true; // bool | 投稿/保存のフラグ
final String subTitle = subTitle_example; // String | 献立のサブタイトル
final MultipartFile thumb = BINARY_DATA_HERE; // MultipartFile | 献立のサムネイル画像
final String cookery = cookery_example; // String | 作り方
final BuiltList<MultipartFile> files = /path/to/file.txt; // BuiltList<MultipartFile> | ファイルリスト
final BuiltList<String> filesDescription = ; // BuiltList<String> | ファイルの説明

try {
    final response = api.postMenu(id, title, category, contents, opened, subTitle, thumb, cookery, files, filesDescription);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->postMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 献立ID　存在しない場合は0 | 
 **title** | **String**| 献立のタイトル | 
 **category** | **int**| カテゴリID | 
 **contents** | **String**| 内容 | 
 **opened** | **bool**| 投稿/保存のフラグ | 
 **subTitle** | **String**| 献立のサブタイトル | [optional] 
 **thumb** | **MultipartFile**| 献立のサムネイル画像 | [optional] 
 **cookery** | **String**| 作り方 | [optional] 
 **files** | [**BuiltList&lt;MultipartFile&gt;**](MultipartFile.md)| ファイルリスト | [optional] 
 **filesDescription** | [**BuiltList&lt;String&gt;**](String.md)| ファイルの説明 | [optional] 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMenus**
> MenusResponse searchMenus(keyword, categories, page)

献立検索

献立情報を検索 タグを指定した場合、そのタグのみ取得する タグを指定しない場合、全てを取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMenuApi();
final String keyword = keyword_example; // String | 検索キーワード
final BuiltList<int> categories = ; // BuiltList<int> | 検索カテゴリIDリスト
final int page = 56; // int | 取得ページ番号

try {
    final response = api.searchMenus(keyword, categories, page);
    print(response);
} catch on DioError (e) {
    print('Exception when calling MenuApi->searchMenus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| 検索キーワード | [optional] 
 **categories** | [**BuiltList&lt;int&gt;**](int.md)| 検索カテゴリIDリスト | [optional] 
 **page** | **int**| 取得ページ番号 | [optional] [default to 1]

### Return type

[**MenusResponse**](MenusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

