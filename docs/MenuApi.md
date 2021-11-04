# swagger.api.MenuApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMenu**](MenuApi.md#deleteMenu) | **POST** /menu/delete | 献立削除
[**favoriteMenu**](MenuApi.md#favoriteMenu) | **POST** /menu/favorite | 献立お気に入り追加・解除
[**getCompositions**](MenuApi.md#getCompositions) | **GET** /menu/compositions | 食品成分表情報取得
[**getMenu**](MenuApi.md#getMenu) | **GET** /menu | 献立内容取得
[**getMenuCategories**](MenuApi.md#getMenuCategories) | **GET** /menu/categories | 献立カテゴリ取得
[**getMenuNewArrival**](MenuApi.md#getMenuNewArrival) | **GET** /menu/newarrival | 新着献立取得
[**getMenuPopular**](MenuApi.md#getMenuPopular) | **GET** /menu/popular | 人気献立取得
[**getPostedMenus**](MenuApi.md#getPostedMenus) | **GET** /account/posted/menus | 投稿献立一覧取得
[**postMenu**](MenuApi.md#postMenu) | **POST** /menu | 献立投稿
[**searchMenus**](MenuApi.md#searchMenus) | **GET** /search/menus | 献立検索


# **deleteMenu**
> BasicResponse deleteMenu(deleteMenuParam)

献立削除

献立を削除 認証必須 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var deleteMenuParam = new DeleteMenuParam(); // DeleteMenuParam | 

try { 
    var result = api_instance.deleteMenu(deleteMenuParam);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->deleteMenu: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var favoriteMenuParam = new FavoriteMenuParam(); // FavoriteMenuParam | 

try { 
    var result = api_instance.favoriteMenu(favoriteMenuParam);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->favoriteMenu: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();

try { 
    var result = api_instance.getCompositions();
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getCompositions: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var id = 56; // int | 献立ID

try { 
    var result = api_instance.getMenu(id);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getMenu: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();

try { 
    var result = api_instance.getMenuCategories();
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getMenuCategories: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();

try { 
    var result = api_instance.getMenuNewArrival();
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getMenuNewArrival: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();

try { 
    var result = api_instance.getMenuPopular();
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getMenuPopular: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var page = 56; // int | 取得ページ番号(1~)

try { 
    var result = api_instance.getPostedMenus(page);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->getPostedMenus: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var id = 56; // int | 献立ID　存在しない場合は0
var title = title_example; // String | 献立のタイトル
var category = 56; // int | カテゴリID
var contents = contents_example; // String | 内容
var opened = true; // bool | 投稿/保存のフラグ
var subTitle = subTitle_example; // String | 献立のサブタイトル
var thumb = /path/to/file.txt; // MultipartFile | 献立のサムネイル画像
var cookery = cookery_example; // String | 作り方
var files = []; // List<String> | ファイルリスト
var filesDescription = []; // List<String> | ファイルの説明

try { 
    var result = api_instance.postMenu(id, title, category, contents, opened, subTitle, thumb, cookery, files, filesDescription);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->postMenu: $e\n");
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
 **files** | [**List&lt;String&gt;**](String.md)| ファイルリスト | [optional] 
 **filesDescription** | [**List&lt;String&gt;**](String.md)| ファイルの説明 | [optional] 

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
import 'package:swagger/api.dart';

var api_instance = new MenuApi();
var keyword = keyword_example; // String | 検索キーワード
var categories = []; // List<int> | 検索カテゴリIDリスト
var page = 56; // int | 取得ページ番号

try { 
    var result = api_instance.searchMenus(keyword, categories, page);
    print(result);
} catch (e) {
    print("Exception when calling MenuApi->searchMenus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| 検索キーワード | [optional] 
 **categories** | [**List&lt;int&gt;**](int.md)| 検索カテゴリIDリスト | [optional] 
 **page** | **int**| 取得ページ番号 | [optional] [default to 1]

### Return type

[**MenusResponse**](MenusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

