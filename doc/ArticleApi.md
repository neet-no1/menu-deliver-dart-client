# openapi.api.ArticleApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteArticle**](ArticleApi.md#deletearticle) | **POST** /article/delete | 記事削除
[**favoriteArticle**](ArticleApi.md#favoritearticle) | **POST** /article/favorite | 記事お気に入り追加・解除
[**getArticle**](ArticleApi.md#getarticle) | **GET** /article | 記事内容取得
[**getArticleNewArrival**](ArticleApi.md#getarticlenewarrival) | **GET** /article/newarrival | 新着記事取得
[**getPostedArticles**](ArticleApi.md#getpostedarticles) | **GET** /account/posted/articles | 投稿記事一覧取得
[**postArticle**](ArticleApi.md#postarticle) | **POST** /article | 記事投稿
[**searchArticles**](ArticleApi.md#searcharticles) | **GET** /search/articles | 記事検索


# **deleteArticle**
> BasicResponse deleteArticle(deleteArticleParam)

記事削除

記事を削除 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final deleteArticleParam = DeleteArticleParam(); // DeleteArticleParam | 

try {
    final result = api_instance.deleteArticle(deleteArticleParam);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->deleteArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteArticleParam** | [**DeleteArticleParam**](DeleteArticleParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favoriteArticle**
> BasicResponse favoriteArticle(favoriteArticleParam)

記事お気に入り追加・解除

記事のお気に入りの追加と解除を行う 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final favoriteArticleParam = FavoriteArticleParam(); // FavoriteArticleParam | 

try {
    final result = api_instance.favoriteArticle(favoriteArticleParam);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->favoriteArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **favoriteArticleParam** | [**FavoriteArticleParam**](FavoriteArticleParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticle**
> ArticleDataResponse getArticle(id)

記事内容取得

記事内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final id = 56; // int | 記事ID

try {
    final result = api_instance.getArticle(id);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->getArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 記事ID | 

### Return type

[**ArticleDataResponse**](ArticleDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleNewArrival**
> ArticlesResponse getArticleNewArrival()

新着記事取得

最近の投稿順(更新日時)で記事情報を取得 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();

try {
    final result = api_instance.getArticleNewArrival();
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->getArticleNewArrival: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ArticlesResponse**](ArticlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostedArticles**
> ArticlesResponse getPostedArticles(page)

投稿記事一覧取得

自身が投稿した記事の一覧を取得 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final page = 56; // int | 取得ページ番号(1~)

try {
    final result = api_instance.getPostedArticles(page);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->getPostedArticles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| 取得ページ番号(1~) | [optional] [default to 1]

### Return type

[**ArticlesResponse**](ArticlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postArticle**
> BasicResponse postArticle(id, title, contents, opened, thumb)

記事投稿

記事を投稿する DBに必要なデータだけ保存して、S3にアップロードする 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final id = 56; // int | 記事ID　存在しない場合は0
final title = title_example; // String | 記事のタイトル
final contents = contents_example; // String | 内容
final opened = true; // bool | 投稿/保存のフラグ
final thumb = BINARY_DATA_HERE; // MultipartFile | 記事のサムネイル画像

try {
    final result = api_instance.postArticle(id, title, contents, opened, thumb);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->postArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 記事ID　存在しない場合は0 | 
 **title** | **String**| 記事のタイトル | 
 **contents** | **String**| 内容 | 
 **opened** | **bool**| 投稿/保存のフラグ | 
 **thumb** | **MultipartFile**| 記事のサムネイル画像 | [optional] 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchArticles**
> ArticlesResponse searchArticles(keyword, page)

記事検索

記事情報を検索 新着順(更新日時)で表示する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ArticleApi();
final keyword = keyword_example; // String | 検索キーワード
final page = 56; // int | 取得ページ番号

try {
    final result = api_instance.searchArticles(keyword, page);
    print(result);
} catch (e) {
    print('Exception when calling ArticleApi->searchArticles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| 検索キーワード | [optional] 
 **page** | **int**| 取得ページ番号 | [optional] [default to 1]

### Return type

[**ArticlesResponse**](ArticlesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

