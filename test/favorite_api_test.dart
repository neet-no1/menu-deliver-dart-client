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


/// tests for FavoriteApi
void main() {
  final instance = FavoriteApi();

  group('tests for FavoriteApi', () {
    // 記事のお気に入り追加状態を取得
    //
    // 記事がお気に入りに追加されているかを確認する 認証必須 
    //
    //Future<FavoriteArticleIsAddedResponse> favoriteArticleIsAdded(int id) async
    test('test favoriteArticleIsAdded', () async {
      // TODO
    });

    // 献立のお気に入り追加状態を取得
    //
    // 献立がお気に入りに追加されているかを確認する 認証必須 
    //
    //Future<FavoriteMenuIsAddedResponse> favoriteMenuIsAdded(int id) async
    test('test favoriteMenuIsAdded', () async {
      // TODO
    });

    // お気に入り一覧を取得
    //
    // お気に入りの記事と献立の一覧を取得する 認証必須 
    //
    //Future<MenusAndArticlesResponse> getFavoriteItems({ int menuPage, int articlePage }) async
    test('test getFavoriteItems', () async {
      // TODO
    });

  });
}