import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MenuApi
void main() {
  final instance = Openapi().getMenuApi();

  group(MenuApi, () {
    // 献立削除
    //
    // 献立を削除 認証必須 
    //
    //Future<BasicResponse> deleteMenu(DeleteMenuParam deleteMenuParam) async
    test('test deleteMenu', () async {
      // TODO
    });

    // 献立お気に入り追加・解除
    //
    // 献立のお気に入りの追加と解除を行う 認証必須 
    //
    //Future<BasicResponse> favoriteMenu(FavoriteMenuParam favoriteMenuParam) async
    test('test favoriteMenu', () async {
      // TODO
    });

    // 食品成分表情報取得
    //
    // 食品成分表のデータ一覧を取得する 認証不要 
    //
    //Future<CompositionsResponse> getCompositions() async
    test('test getCompositions', () async {
      // TODO
    });

    // 献立内容取得
    //
    // 献立内容を取得する S3のパスを取得し、内容はS3から取得する 投稿済み：認証不要 編集中：認証必須 
    //
    //Future<MenuDataResponse> getMenu(int id) async
    test('test getMenu', () async {
      // TODO
    });

    // 献立カテゴリ取得
    //
    // 献立のカテゴリ一覧を取得する 認証不要 
    //
    //Future<MenuCategoriesResponse> getMenuCategories() async
    test('test getMenuCategories', () async {
      // TODO
    });

    // 新着献立取得
    //
    // 最近の投稿順(更新日時)で献立情報を取得 認証不要 
    //
    //Future<MenusResponse> getMenuNewArrival() async
    test('test getMenuNewArrival', () async {
      // TODO
    });

    // 人気献立取得
    //
    // 直近の閲覧数が多い献立を取得 認証不要 
    //
    //Future<MenusResponse> getMenuPopular() async
    test('test getMenuPopular', () async {
      // TODO
    });

    // 投稿献立一覧取得
    //
    // 自身が投稿した献立の一覧を取得 認証必須 
    //
    //Future<MenusResponse> getPostedMenus({ int page }) async
    test('test getPostedMenus', () async {
      // TODO
    });

    // 献立投稿
    //
    // 献立を投稿する S3へアップロードする 認証必須 
    //
    //Future<BasicResponse> postMenu(int id, String title, int category, String contents, bool opened, { String subTitle, MultipartFile thumb, String cookery, BuiltList<MultipartFile> files, BuiltList<String> filesDescription }) async
    test('test postMenu', () async {
      // TODO
    });

    // 献立検索
    //
    // 献立情報を検索 タグを指定した場合、そのタグのみ取得する タグを指定しない場合、全てを取得する 認証不要 
    //
    //Future<MenusResponse> searchMenus({ String keyword, BuiltList<int> categories, int page }) async
    test('test searchMenus', () async {
      // TODO
    });

  });
}
