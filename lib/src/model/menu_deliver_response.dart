//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_deliver_response.g.dart';

/// MenuDeliverResponse
///
/// Properties:
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class MenuDeliverResponse implements Built<MenuDeliverResponse, MenuDeliverResponseBuilder> {
    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    MenuDeliverResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuDeliverResponseBuilder b) => b;

    factory MenuDeliverResponse([void updates(MenuDeliverResponseBuilder b)]) = _$MenuDeliverResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuDeliverResponse> get serializer => _$MenuDeliverResponseSerializer();
}

class _$MenuDeliverResponseSerializer implements StructuredSerializer<MenuDeliverResponse> {
    @override
    final Iterable<Type> types = const [MenuDeliverResponse, _$MenuDeliverResponse];

    @override
    final String wireName = r'MenuDeliverResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuDeliverResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    MenuDeliverResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuDeliverResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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

