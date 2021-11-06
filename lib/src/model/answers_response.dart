//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answers_response.g.dart';

/// AnswersResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class AnswersResponse implements Built<AnswersResponse, AnswersResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    JsonObject? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    AnswersResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AnswersResponseBuilder b) => b;

    factory AnswersResponse([void updates(AnswersResponseBuilder b)]) = _$AnswersResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<AnswersResponse> get serializer => _$AnswersResponseSerializer();
}

class _$AnswersResponseSerializer implements StructuredSerializer<AnswersResponse> {
    @override
    final Iterable<Type> types = const [AnswersResponse, _$AnswersResponse];

    @override
    final String wireName = r'AnswersResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, AnswersResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(JsonObject)));
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
    AnswersResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AnswersResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    result.info = valueDes;
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

