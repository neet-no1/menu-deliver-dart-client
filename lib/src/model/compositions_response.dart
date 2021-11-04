//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/composition_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'compositions_response.g.dart';

/// CompositionsResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class CompositionsResponse implements Built<CompositionsResponse, CompositionsResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    BuiltList<CompositionData>? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    CompositionsResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CompositionsResponseBuilder b) => b;

    factory CompositionsResponse([void updates(CompositionsResponseBuilder b)]) = _$CompositionsResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<CompositionsResponse> get serializer => _$CompositionsResponseSerializer();
}

class _$CompositionsResponseSerializer implements StructuredSerializer<CompositionsResponse> {
    @override
    final Iterable<Type> types = const [CompositionsResponse, _$CompositionsResponse];

    @override
    final String wireName = r'CompositionsResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, CompositionsResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(BuiltList, [FullType(CompositionData)])));
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
    CompositionsResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompositionsResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CompositionData)])) as BuiltList<CompositionData>;
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

