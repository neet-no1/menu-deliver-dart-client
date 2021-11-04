//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_data.g.dart';

/// QuestionData
///
/// Properties:
/// * [id] - 質問ID
/// * [contents] - 質問内容
/// * [images] - 画像のパス
/// * [userName] - ニックネーム
/// * [userIcon] - ユーザアイコンのパス
/// * [mine] - 自分が投稿したものか
abstract class QuestionData implements Built<QuestionData, QuestionDataBuilder> {
    /// 質問ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 質問内容
    @BuiltValueField(wireName: r'contents')
    String? get contents;

    /// 画像のパス
    @BuiltValueField(wireName: r'images')
    String? get images;

    /// ニックネーム
    @BuiltValueField(wireName: r'userName')
    String? get userName;

    /// ユーザアイコンのパス
    @BuiltValueField(wireName: r'userIcon')
    String? get userIcon;

    /// 自分が投稿したものか
    @BuiltValueField(wireName: r'mine')
    bool? get mine;

    QuestionData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QuestionDataBuilder b) => b;

    factory QuestionData([void updates(QuestionDataBuilder b)]) = _$QuestionData;

    @BuiltValueSerializer(custom: true)
    static Serializer<QuestionData> get serializer => _$QuestionDataSerializer();
}

class _$QuestionDataSerializer implements StructuredSerializer<QuestionData> {
    @override
    final Iterable<Type> types = const [QuestionData, _$QuestionData];

    @override
    final String wireName = r'QuestionData';

    @override
    Iterable<Object?> serialize(Serializers serializers, QuestionData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.contents != null) {
            result
                ..add(r'contents')
                ..add(serializers.serialize(object.contents,
                    specifiedType: const FullType(String)));
        }
        if (object.images != null) {
            result
                ..add(r'images')
                ..add(serializers.serialize(object.images,
                    specifiedType: const FullType(String)));
        }
        if (object.userName != null) {
            result
                ..add(r'userName')
                ..add(serializers.serialize(object.userName,
                    specifiedType: const FullType(String)));
        }
        if (object.userIcon != null) {
            result
                ..add(r'userIcon')
                ..add(serializers.serialize(object.userIcon,
                    specifiedType: const FullType(String)));
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
    QuestionData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QuestionDataBuilder();

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
                case r'contents':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.contents = valueDes;
                    break;
                case r'images':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.images = valueDes;
                    break;
                case r'userName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userName = valueDes;
                    break;
                case r'userIcon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userIcon = valueDes;
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

