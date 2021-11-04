//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ArticleApi
void main() {
  final instance = ArticleApi();

  group('tests for ArticleApi', () {
    // 記事削除
    //
    // 記事を削除 認証必須 
    //
    //Future<BasicResponse> deleteArticle(DeleteArticleParam deleteArticleParam) async
    test('test deleteArticle', () async {
      // TODO
    });

    // 記事お気に入り追加・解除
    //
    // 記事のお気に入りの追加と解除を行う 認証必須 
    //
    //Future<BasicResponse> favoriteArticle(FavoriteArticleParam favoriteArticleParam) async
    test('test favoriteArticle', () async {
      // TODO
    });

    // 記事内容取得
    //
    // 記事内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
    //
    //Future<ArticleDataResponse> getArticle(int id) async
    test('test getArticle', () async {
      // TODO
    });

    // 新着記事取得
    //
    // 最近の投稿順(更新日時)で記事情報を取得 認証不要 
    //
    //Future<ArticlesResponse> getArticleNewArrival() async
    test('test getArticleNewArrival', () async {
      // TODO
    });

    // 投稿記事一覧取得
    //
    // 自身が投稿した記事の一覧を取得 認証必須 
    //
    //Future<ArticlesResponse> getPostedArticles({ int page }) async
    test('test getPostedArticles', () async {
      // TODO
    });

    // 記事投稿
    //
    // 記事を投稿する DBに必要なデータだけ保存して、S3にアップロードする 認証必須 
    //
    //Future<BasicResponse> postArticle(int id, String title, String contents, bool opened, { MultipartFile thumb }) async
    test('test postArticle', () async {
      // TODO
    });

    // 記事検索
    //
    // 記事情報を検索 新着順(更新日時)で表示する 認証不要 
    //
    //Future<ArticlesResponse> searchArticles({ String keyword, int page }) async
    test('test searchArticles', () async {
      // TODO
    });

  });
}
