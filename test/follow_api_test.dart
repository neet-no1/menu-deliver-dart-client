import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FollowApi
void main() {
  final instance = Openapi().getFollowApi();

  group(FollowApi, () {
    // ユーザをフォローする
    //
    // ユーザをフォローする 認証必須 
    //
    //Future<BasicResponse> followUser(FollowUserParam followUserParam) async
    test('test followUser', () async {
      // TODO
    });

    // フォロー・フォロワー取得
    //
    // フォロー・フォロワーの情報を取得する 認証必須 
    //
    //Future<FollowersResponse> getFollowers({ int followPage, int followerPage }) async
    test('test getFollowers', () async {
      // TODO
    });

  });
}
