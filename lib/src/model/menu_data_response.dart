//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_data.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_data_response.g.dart';

/// MenuDataResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class MenuDataResponse implements Built<MenuDataResponse, MenuDataResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    MenuData? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    MenuDataResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuDataResponseBuilder b) => b;

    factory MenuDataResponse([void updates(MenuDataResponseBuilder b)]) = _$MenuDataResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuDataResponse> get serializer => _$MenuDataResponseSerializer();
}

class _$MenuDataResponseSerializer implements StructuredSerializer<MenuDataResponse> {
    @override
    final Iterable<Type> types = const [MenuDataResponse, _$MenuDataResponse];

    @override
    final String wireName = r'MenuDataResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuDataResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(MenuData)));
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
    MenuDataResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuDataResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(MenuData)) as MenuData;
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

