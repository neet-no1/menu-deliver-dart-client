import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RecommendApi
void main() {
  final instance = Openapi().getRecommendApi();

  group(RecommendApi, () {
    // おすすめ情報表示パラメタを取得
    //
    // トップのおすすめ情報を表示するための情報を取得 表示画像や表示情報を取得 認証不要 
    //
    //Future<RecommendMetaDataResponse> getRecommendMeta() async
    test('test getRecommendMeta', () async {
      // TODO
    });

  });
}
