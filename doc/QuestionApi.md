# openapi.api.QuestionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:48080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**answerQuestion**](QuestionApi.md#answerquestion) | **POST** /question/answer | 回答投稿
[**decideBestAnswer**](QuestionApi.md#decidebestanswer) | **POST** /question/bestanswer | ベストアンサー決定
[**getAnswers**](QuestionApi.md#getanswers) | **GET** /question/answers | 回答一覧取得
[**getBestAnswer**](QuestionApi.md#getbestanswer) | **GET** /question/bestanswer | ベストアンサー取得
[**getQuestion**](QuestionApi.md#getquestion) | **GET** /question | 質問内容取得
[**getQuestionCategories**](QuestionApi.md#getquestioncategories) | **GET** /question/categories | 質問カテゴリ取得
[**postQuestion**](QuestionApi.md#postquestion) | **POST** /question | 質問投稿
[**searchQuestions**](QuestionApi.md#searchquestions) | **GET** /search/questions | 質問検索


# **answerQuestion**
> BasicResponse answerQuestion(id, contents, file)

回答投稿

質問に対する回答を投稿する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final int id = 56; // int | 質問ID
final String contents = contents_example; // String | 内容
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 質問内容の画像

try {
    final response = api.answerQuestion(id, contents, file);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->answerQuestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 質問ID | 
 **contents** | **String**| 内容 | 
 **file** | **MultipartFile**| 質問内容の画像 | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **decideBestAnswer**
> BasicResponse decideBestAnswer(decideBestAnswerParam)

ベストアンサー決定

ベストアンサーを決定する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final DecideBestAnswerParam decideBestAnswerParam = ; // DecideBestAnswerParam | 

try {
    final response = api.decideBestAnswer(decideBestAnswerParam);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->decideBestAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decideBestAnswerParam** | [**DecideBestAnswerParam**](DecideBestAnswerParam.md)|  | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnswers**
> AnswersResponse getAnswers(id)

回答一覧取得

質問の回答一覧を取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final int id = 56; // int | 質問ID

try {
    final response = api.getAnswers(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->getAnswers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 質問ID | 

### Return type

[**AnswersResponse**](AnswersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBestAnswer**
> BestAnswerResponse getBestAnswer(id)

ベストアンサー取得

ベストアンサーが存在するか、しないか 存在する場合は回答IDを取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final int id = 56; // int | 質問ID

try {
    final response = api.getBestAnswer(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->getBestAnswer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 質問ID | 

### Return type

[**BestAnswerResponse**](BestAnswerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestion**
> QuestionDataResponse getQuestion(id)

質問内容取得

質問の内容と回答の一覧を取得する 投稿日順に取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final int id = 56; // int | 質問ID

try {
    final response = api.getQuestion(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->getQuestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| 質問ID | 

### Return type

[**QuestionDataResponse**](QuestionDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuestionCategories**
> QuestionCategoriesResponse getQuestionCategories()

質問カテゴリ取得

質問のカテゴリ一覧を取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();

try {
    final response = api.getQuestionCategories();
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->getQuestionCategories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QuestionCategoriesResponse**](QuestionCategoriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQuestion**
> BasicResponse postQuestion(contents, file)

質問投稿

質問を投稿する 認証必須 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final String contents = contents_example; // String | 内容
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 質問内容の画像

try {
    final response = api.postQuestion(contents, file);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->postQuestion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contents** | **String**| 内容 | 
 **file** | **MultipartFile**| 質問内容の画像 | 

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchQuestions**
> QuestionsResponse searchQuestions(pageNewArrival, pageUnsolved, pageSolved, tags, keyword)

質問検索

質問情報を検索 タグを指定した場合、そのタグのみ表示する タグを指定しない場合、新着、未解決、解決済みの全てを取得する 認証不要 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuestionApi();
final int pageNewArrival = 56; // int | 新着の取得ページ番号
final int pageUnsolved = 56; // int | 未解決の取得ページ番号
final int pageSolved = 56; // int | 解決済みの取得ページ番号
final BuiltList<int> tags = ; // BuiltList<int> | 選択したタグIDの配列
final String keyword = keyword_example; // String | 検索キーワード

try {
    final response = api.searchQuestions(pageNewArrival, pageUnsolved, pageSolved, tags, keyword);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuestionApi->searchQuestions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNewArrival** | **int**| 新着の取得ページ番号 | [default to 1]
 **pageUnsolved** | **int**| 未解決の取得ページ番号 | [default to 1]
 **pageSolved** | **int**| 解決済みの取得ページ番号 | [default to 1]
 **tags** | [**BuiltList&lt;int&gt;**](int.md)| 選択したタグIDの配列 | [optional] 
 **keyword** | **String**| 検索キーワード | [optional] 

### Return type

[**QuestionsResponse**](QuestionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

