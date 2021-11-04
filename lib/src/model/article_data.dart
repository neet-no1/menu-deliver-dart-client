//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article_data.g.dart';

/// ArticleData
///
/// Properties:
/// * [id] - 記事ID
/// * [title] - 記事のタイトル
/// * [detail] - 詳細文頭
/// * [imgPath] - 表示する画像のパス
/// * [date] - 記事の更新日
/// * [userId] - 投稿ユーザID
/// * [userName] - 投稿ユーザ名
/// * [userIconPath] - ユーザアイコン画像のパス
/// * [contents] - 記事内容のパス
/// * [opened] - 公開済みか
/// * [mine] - 自分が投稿したものか
abstract class ArticleData implements Built<ArticleData, ArticleDataBuilder> {
    /// 記事ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 記事のタイトル
    @BuiltValueField(wireName: r'title')
    String? get title;

    /// 詳細文頭
    @BuiltValueField(wireName: r'detail')
    String? get detail;

    /// 表示する画像のパス
    @BuiltValueField(wireName: r'imgPath')
    String? get imgPath;

    /// 記事の更新日
    @BuiltValueField(wireName: r'date')
    String? get date;

    /// 投稿ユーザID
    @BuiltValueField(wireName: r'userId')
    int? get userId;

    /// 投稿ユーザ名
    @BuiltValueField(wireName: r'userName')
    String? get userName;

    /// ユーザアイコン画像のパス
    @BuiltValueField(wireName: r'userIconPath')
    String? get userIconPath;

    /// 記事内容のパス
    @BuiltValueField(wireName: r'contents')
    String? get contents;

    /// 公開済みか
    @BuiltValueField(wireName: r'opened')
    bool? get opened;

    /// 自分が投稿したものか
    @BuiltValueField(wireName: r'mine')
    bool? get mine;

    ArticleData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ArticleDataBuilder b) => b;

    factory ArticleData([void updates(ArticleDataBuilder b)]) = _$ArticleData;

    @BuiltValueSerializer(custom: true)
    static Serializer<ArticleData> get serializer => _$ArticleDataSerializer();
}

class _$ArticleDataSerializer implements StructuredSerializer<ArticleData> {
    @override
    final Iterable<Type> types = const [ArticleData, _$ArticleData];

    @override
    final String wireName = r'ArticleData';

    @override
    Iterable<Object?> serialize(Serializers serializers, ArticleData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.detail != null) {
            result
                ..add(r'detail')
                ..add(serializers.serialize(object.detail,
                    specifiedType: const FullType(String)));
        }
        if (object.imgPath != null) {
            result
                ..add(r'imgPath')
                ..add(serializers.serialize(object.imgPath,
                    specifiedType: const FullType(String)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(String)));
        }
        if (object.userId != null) {
            result
                ..add(r'userId')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.userName != null) {
            result
                ..add(r'userName')
                ..add(serializers.serialize(object.userName,
                    specifiedType: const FullType(String)));
        }
        if (object.userIconPath != null) {
            result
                ..add(r'userIconPath')
                ..add(serializers.serialize(object.userIconPath,
                    specifiedType: const FullType(String)));
        }
        if (object.contents != null) {
            result
                ..add(r'contents')
                ..add(serializers.serialize(object.contents,
                    specifiedType: const FullType(String)));
        }
        if (object.opened != null) {
            result
                ..add(r'opened')
                ..add(serializers.serialize(object.opened,
                    specifiedType: const FullType(bool)));
        }
        if (object.mine != null) {
            result
                ..add(r'mine')
                ..add(serializers.serialize(object.mine,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    ArticleData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ArticleDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.detail = valueDes;
                    break;
                case r'imgPath':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imgPath = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.date = valueDes;
                    break;
                case r'userId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'userName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userName = valueDes;
                    break;
                case r'userIconPath':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userIconPath = valueDes;
                    break;
                case r'contents':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.contents = valueDes;
                    break;
                case r'opened':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.opened = valueDes;
                    break;
                case r'mine':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.mine = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

