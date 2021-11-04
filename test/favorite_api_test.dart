import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FavoriteApi
void main() {
  final instance = Openapi().getFavoriteApi();

  group(FavoriteApi, () {
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
