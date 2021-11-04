# swagger
No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';


var api_instance = new AccountApi();
var oneTimePassword = oneTimePassword_example; // String | メールアドレスの有効性確認パスワード

try {
    var result = api_instance.emailConfirm(oneTimePassword);
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->emailConfirm: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost:48080/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**emailConfirm**](docs//AccountApi.md#emailconfirm) | **GET** /account/email/confirm | メールアドレス有効性確認
*AccountApi* | [**getAccountAuth**](docs//AccountApi.md#getaccountauth) | **GET** /account/auth | ログイン状態取得
*AccountApi* | [**getAccountInfo**](docs//AccountApi.md#getaccountinfo) | **GET** /account/info | アカウント情報取得
*AccountApi* | [**registAccount**](docs//AccountApi.md#registaccount) | **POST** /account/regist | アカウント登録
*AccountApi* | [**resetPassword**](docs//AccountApi.md#resetpassword) | **POST** /password/reset | パスワードリセット
*AccountApi* | [**updateAccountInfo**](docs//AccountApi.md#updateaccountinfo) | **POST** /account/info/update | アカウント情報更新
*AccountApi* | [**updatePassword**](docs//AccountApi.md#updatepassword) | **POST** /account/password/update | パスワード更新
*ArticleApi* | [**deleteArticle**](docs//ArticleApi.md#deletearticle) | **POST** /article/delete | 記事削除
*ArticleApi* | [**favoriteArticle**](docs//ArticleApi.md#favoritearticle) | **POST** /article/favorite | 記事お気に入り追加・解除
*ArticleApi* | [**getArticle**](docs//ArticleApi.md#getarticle) | **GET** /article | 記事内容取得
*ArticleApi* | [**getArticleNewArrival**](docs//ArticleApi.md#getarticlenewarrival) | **GET** /article/newarrival | 新着記事取得
*ArticleApi* | [**getPostedArticles**](docs//ArticleApi.md#getpostedarticles) | **GET** /account/posted/articles | 投稿記事一覧取得
*ArticleApi* | [**postArticle**](docs//ArticleApi.md#postarticle) | **POST** /article | 記事投稿
*ArticleApi* | [**searchArticles**](docs//ArticleApi.md#searcharticles) | **GET** /search/articles | 記事検索
*FavoriteApi* | [**favoriteArticleIsAdded**](docs//FavoriteApi.md#favoritearticleisadded) | **GET** /favorite/article/item | 記事のお気に入り追加状態を取得
*FavoriteApi* | [**favoriteMenuIsAdded**](docs//FavoriteApi.md#favoritemenuisadded) | **GET** /favorite/menu/item | 献立のお気に入り追加状態を取得
*FavoriteApi* | [**getFavoriteItems**](docs//FavoriteApi.md#getfavoriteitems) | **GET** /account/favorites | お気に入り一覧を取得
*FollowApi* | [**followUser**](docs//FollowApi.md#followuser) | **POST** /follow | ユーザをフォローする
*FollowApi* | [**getFollowers**](docs//FollowApi.md#getfollowers) | **GET** /follow/list | フォロー・フォロワー取得
*LoginApi* | [**login**](docs//LoginApi.md#login) | **POST** /login | ログイン
*MenuApi* | [**deleteMenu**](docs//MenuApi.md#deletemenu) | **POST** /menu/delete | 献立削除
*MenuApi* | [**favoriteMenu**](docs//MenuApi.md#favoritemenu) | **POST** /menu/favorite | 献立お気に入り追加・解除
*MenuApi* | [**getCompositions**](docs//MenuApi.md#getcompositions) | **GET** /menu/compositions | 食品成分表情報取得
*MenuApi* | [**getMenu**](docs//MenuApi.md#getmenu) | **GET** /menu | 献立内容取得
*MenuApi* | [**getMenuCategories**](docs//MenuApi.md#getmenucategories) | **GET** /menu/categories | 献立カテゴリ取得
*MenuApi* | [**getMenuNewArrival**](docs//MenuApi.md#getmenunewarrival) | **GET** /menu/newarrival | 新着献立取得
*MenuApi* | [**getMenuPopular**](docs//MenuApi.md#getmenupopular) | **GET** /menu/popular | 人気献立取得
*MenuApi* | [**getPostedMenus**](docs//MenuApi.md#getpostedmenus) | **GET** /account/posted/menus | 投稿献立一覧取得
*MenuApi* | [**postMenu**](docs//MenuApi.md#postmenu) | **POST** /menu | 献立投稿
*MenuApi* | [**searchMenus**](docs//MenuApi.md#searchmenus) | **GET** /search/menus | 献立検索
*NoticeApi* | [**getNotices**](docs//NoticeApi.md#getnotices) | **GET** /notice | お知らせ情報取得
*QuestionApi* | [**answerQuestion**](docs//QuestionApi.md#answerquestion) | **POST** /question/answer | 回答投稿
*QuestionApi* | [**decideBestAnswer**](docs//QuestionApi.md#decidebestanswer) | **POST** /question/bestanswer | ベストアンサー決定
*QuestionApi* | [**getAnswers**](docs//QuestionApi.md#getanswers) | **GET** /question/answers | 回答一覧取得
*QuestionApi* | [**getBestAnswer**](docs//QuestionApi.md#getbestanswer) | **GET** /question/bestanswer | ベストアンサー取得
*QuestionApi* | [**getQuestion**](docs//QuestionApi.md#getquestion) | **GET** /question | 質問内容取得
*QuestionApi* | [**getQuestionCategories**](docs//QuestionApi.md#getquestioncategories) | **GET** /question/categories | 質問カテゴリ取得
*QuestionApi* | [**postQuestion**](docs//QuestionApi.md#postquestion) | **POST** /question | 質問投稿
*QuestionApi* | [**searchQuestions**](docs//QuestionApi.md#searchquestions) | **GET** /search/questions | 質問検索
*RecommendApi* | [**getRecommendMeta**](docs//RecommendApi.md#getrecommendmeta) | **GET** /recommend/meta | おすすめ情報表示パラメタを取得


## Documentation For Models

 - [AccountAuthResponse](docs//AccountAuthResponse.md)
 - [AccountData](docs//AccountData.md)
 - [AccountResponse](docs//AccountResponse.md)
 - [AnswerData](docs//AnswerData.md)
 - [AnswersResponse](docs//AnswersResponse.md)
 - [ArticleData](docs//ArticleData.md)
 - [ArticleDataResponse](docs//ArticleDataResponse.md)
 - [ArticlesResponse](docs//ArticlesResponse.md)
 - [BasicResponse](docs//BasicResponse.md)
 - [BestAnswerResponse](docs//BestAnswerResponse.md)
 - [CompositionData](docs//CompositionData.md)
 - [CompositionsResponse](docs//CompositionsResponse.md)
 - [DecideBestAnswerParam](docs//DecideBestAnswerParam.md)
 - [DeleteArticleParam](docs//DeleteArticleParam.md)
 - [DeleteMenuParam](docs//DeleteMenuParam.md)
 - [ErrorInfo](docs//ErrorInfo.md)
 - [FavoriteArticleIsAddedResponse](docs//FavoriteArticleIsAddedResponse.md)
 - [FavoriteArticleParam](docs//FavoriteArticleParam.md)
 - [FavoriteMenuIsAddedResponse](docs//FavoriteMenuIsAddedResponse.md)
 - [FavoriteMenuParam](docs//FavoriteMenuParam.md)
 - [FollowUserData](docs//FollowUserData.md)
 - [FollowUserParam](docs//FollowUserParam.md)
 - [FollowersResponse](docs//FollowersResponse.md)
 - [MenuCategoriesResponse](docs//MenuCategoriesResponse.md)
 - [MenuCategoryData](docs//MenuCategoryData.md)
 - [MenuData](docs//MenuData.md)
 - [MenuDataResponse](docs//MenuDataResponse.md)
 - [MenuDeliverResponse](docs//MenuDeliverResponse.md)
 - [MenuImageData](docs//MenuImageData.md)
 - [MenusAndArticlesResponse](docs//MenusAndArticlesResponse.md)
 - [MenusResponse](docs//MenusResponse.md)
 - [NoticesResponse](docs//NoticesResponse.md)
 - [PageNation](docs//PageNation.md)
 - [PasswordResetParam](docs//PasswordResetParam.md)
 - [QuestionCategoriesResponse](docs//QuestionCategoriesResponse.md)
 - [QuestionCategoryData](docs//QuestionCategoryData.md)
 - [QuestionData](docs//QuestionData.md)
 - [QuestionDataResponse](docs//QuestionDataResponse.md)
 - [QuestionsResponse](docs//QuestionsResponse.md)
 - [RecommendMetaDataResponse](docs//RecommendMetaDataResponse.md)
 - [RegistAccountParam](docs//RegistAccountParam.md)
 - [UpdatePasswordParam](docs//UpdatePasswordParam.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




