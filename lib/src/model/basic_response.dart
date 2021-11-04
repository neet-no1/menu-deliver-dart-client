//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'basic_response.g.dart';

/// BasicResponse
///
/// Properties:
/// * [info] - 成功可否
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class BasicResponse implements Built<BasicResponse, BasicResponseBuilder> {
    /// 成功可否
    @BuiltValueField(wireName: r'info')
    int? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    BasicResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BasicResponseBuilder b) => b;

    factory BasicResponse([void updates(BasicResponseBuilder b)]) = _$BasicResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<BasicResponse> get serializer => _$BasicResponseSerializer();
}

class _$BasicResponseSerializer implements StructuredSerializer<BasicResponse> {
    @override
    final Iterable<Type> types = const [BasicResponse, _$BasicResponse];

    @override
    final String wireName = r'BasicResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, BasicResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(int)));
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
    BasicResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BasicResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

