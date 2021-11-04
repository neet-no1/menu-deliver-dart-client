import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountApi
void main() {
  final instance = Openapi().getAccountApi();

  group(AccountApi, () {
    // メールアドレス有効性確認
    //
    // リクエストのワンタイムパスワードがあっているか確認する 認証不要 
    //
    //Future<BasicResponse> emailConfirm(String oneTimePassword) async
    test('test emailConfirm', () async {
      // TODO
    });

    // ログイン状態取得
    //
    // ログイン状態を取得する ログインしていればユーザのアイコンを取得する 認証不要 
    //
    //Future<AccountAuthResponse> getAccountAuth() async
    test('test getAccountAuth', () async {
      // TODO
    });

    // アカウント情報取得
    //
    // マイページに表示する情報を取得 認証必須 
    //
    //Future<AccountResponse> getAccountInfo() async
    test('test getAccountInfo', () async {
      // TODO
    });

    // アカウント登録
    //
    // アカウント登録処理を行う メールアドレスにワンタイムパスワードを付与して、メールアドレスが有効か確認する 認証不要 
    //
    //Future<BasicResponse> registAccount(RegistAccountParam registAccountParam) async
    test('test registAccount', () async {
      // TODO
    });

    // パスワードリセット
    //
    // 新規パスワード生成しユーザのメールアドレスへ送信する 認証不要 
    //
    //Future<BasicResponse> resetPassword(PasswordResetParam passwordResetParam) async
    test('test resetPassword', () async {
      // TODO
    });

    // アカウント情報更新
    //
    // マイページに表示する情報を更新 認証必須 
    //
    //Future<BasicResponse> updateAccountInfo(String name, String email, MultipartFile icon) async
    test('test updateAccountInfo', () async {
      // TODO
    });

    // パスワード更新
    //
    // ログインパスワードを変更する 認証必須 
    //
    //Future<BasicResponse> updatePassword(UpdatePasswordParam updatePasswordParam) async
    test('test updatePassword', () async {
      // TODO
    });

  });
}
