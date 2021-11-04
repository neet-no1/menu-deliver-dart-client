//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:openapi/src/model/question_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_data_response.g.dart';

/// QuestionDataResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class QuestionDataResponse implements Built<QuestionDataResponse, QuestionDataResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    QuestionData? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    QuestionDataResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QuestionDataResponseBuilder b) => b;

    factory QuestionDataResponse([void updates(QuestionDataResponseBuilder b)]) = _$QuestionDataResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<QuestionDataResponse> get serializer => _$QuestionDataResponseSerializer();
}

class _$QuestionDataResponseSerializer implements StructuredSerializer<QuestionDataResponse> {
    @override
    final Iterable<Type> types = const [QuestionDataResponse, _$QuestionDataResponse];

    @override
    final String wireName = r'QuestionDataResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, QuestionDataResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(QuestionData)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(int)));
        }
        if (object.errorInfo != null) {
            result
                ..add(r'errorInfo')
                ..add(serializers.serialize(object.errorInfo,
                    specifiedType: const FullType(ErrorInfo)));
        }
        return result;
    }

    @override
    QuestionDataResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QuestionDataResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(QuestionData)) as QuestionData;
                    result.info.replace(valueDes);
                    break;
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.code = valueDes;
                    break;
                case r'errorInfo':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ErrorInfo)) as ErrorInfo;
                    result.errorInfo.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

