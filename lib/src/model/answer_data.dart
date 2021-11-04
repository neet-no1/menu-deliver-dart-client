//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_data.g.dart';

/// AnswerData
///
/// Properties:
/// * [id] - 回答ID
/// * [contents] - 回答内容
/// * [images] - 画像のパス
/// * [userName] - ニックネーム
/// * [userIcon] - ユーザアイコンのパス
abstract class AnswerData implements Built<AnswerData, AnswerDataBuilder> {
    /// 回答ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 回答内容
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

    AnswerData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AnswerDataBuilder b) => b;

    factory AnswerData([void updates(AnswerDataBuilder b)]) = _$AnswerData;

    @BuiltValueSerializer(custom: true)
    static Serializer<AnswerData> get serializer => _$AnswerDataSerializer();
}

class _$AnswerDataSerializer implements StructuredSerializer<AnswerData> {
    @override
    final Iterable<Type> types = const [AnswerData, _$AnswerData];

    @override
    final String wireName = r'AnswerData';

    @override
    Iterable<Object?> serialize(Serializers serializers, AnswerData object,
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
        return result;
    }

    @override
    AnswerData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AnswerDataBuilder();

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
            }
        }
        return result.build();
    }
}

