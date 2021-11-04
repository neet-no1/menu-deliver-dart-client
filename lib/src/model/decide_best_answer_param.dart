//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decide_best_answer_param.g.dart';

/// DecideBestAnswerParam
///
/// Properties:
/// * [questionId] - 質問ID
/// * [answerId] - 回答ID
abstract class DecideBestAnswerParam implements Built<DecideBestAnswerParam, DecideBestAnswerParamBuilder> {
    /// 質問ID
    @BuiltValueField(wireName: r'questionId')
    int? get questionId;

    /// 回答ID
    @BuiltValueField(wireName: r'answerId')
    int? get answerId;

    DecideBestAnswerParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DecideBestAnswerParamBuilder b) => b;

    factory DecideBestAnswerParam([void updates(DecideBestAnswerParamBuilder b)]) = _$DecideBestAnswerParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<DecideBestAnswerParam> get serializer => _$DecideBestAnswerParamSerializer();
}

class _$DecideBestAnswerParamSerializer implements StructuredSerializer<DecideBestAnswerParam> {
    @override
    final Iterable<Type> types = const [DecideBestAnswerParam, _$DecideBestAnswerParam];

    @override
    final String wireName = r'DecideBestAnswerParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, DecideBestAnswerParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.questionId != null) {
            result
                ..add(r'questionId')
                ..add(serializers.serialize(object.questionId,
                    specifiedType: const FullType(int)));
        }
        if (object.answerId != null) {
            result
                ..add(r'answerId')
                ..add(serializers.serialize(object.answerId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    DecideBestAnswerParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DecideBestAnswerParamBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'questionId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.questionId = valueDes;
                    break;
                case r'answerId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.answerId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

