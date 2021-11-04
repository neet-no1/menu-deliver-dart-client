//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_category_data.g.dart';

/// QuestionCategoryData
///
/// Properties:
/// * [id] - 質問カテゴリID
/// * [name] - 質問カテゴリ名
abstract class QuestionCategoryData implements Built<QuestionCategoryData, QuestionCategoryDataBuilder> {
    /// 質問カテゴリID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 質問カテゴリ名
    @BuiltValueField(wireName: r'name')
    String? get name;

    QuestionCategoryData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QuestionCategoryDataBuilder b) => b;

    factory QuestionCategoryData([void updates(QuestionCategoryDataBuilder b)]) = _$QuestionCategoryData;

    @BuiltValueSerializer(custom: true)
    static Serializer<QuestionCategoryData> get serializer => _$QuestionCategoryDataSerializer();
}

class _$QuestionCategoryDataSerializer implements StructuredSerializer<QuestionCategoryData> {
    @override
    final Iterable<Type> types = const [QuestionCategoryData, _$QuestionCategoryData];

    @override
    final String wireName = r'QuestionCategoryData';

    @override
    Iterable<Object?> serialize(Serializers serializers, QuestionCategoryData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    QuestionCategoryData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QuestionCategoryDataBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

