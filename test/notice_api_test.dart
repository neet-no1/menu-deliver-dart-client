import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NoticeApi
void main() {
  final instance = Openapi().getNoticeApi();

  group(NoticeApi, () {
    // お知らせ情報取得
    //
    // お知らせ情報を取得する 複数のお知らせを取得する 認証不要 
    //
    //Future<NoticesResponse> getNotices() async
    test('test getNotices', () async {
      // TODO
    });

  });
}
