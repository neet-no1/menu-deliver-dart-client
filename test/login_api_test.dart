import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for LoginApi
void main() {
  final instance = Openapi().getLoginApi();

  group(LoginApi, () {
    // ログイン
    //
    // ログイン処理を行う 認証不要 
    //
    //Future<BasicResponse> login({ String email, String password }) async
    test('test login', () async {
      // TODO
    });

  });
}
