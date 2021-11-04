//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:openapi/src/model/menu_category_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_categories_response.g.dart';

/// MenuCategoriesResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class MenuCategoriesResponse implements Built<MenuCategoriesResponse, MenuCategoriesResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    BuiltList<MenuCategoryData>? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    MenuCategoriesResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuCategoriesResponseBuilder b) => b;

    factory MenuCategoriesResponse([void updates(MenuCategoriesResponseBuilder b)]) = _$MenuCategoriesResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuCategoriesResponse> get serializer => _$MenuCategoriesResponseSerializer();
}

class _$MenuCategoriesResponseSerializer implements StructuredSerializer<MenuCategoriesResponse> {
    @override
    final Iterable<Type> types = const [MenuCategoriesResponse, _$MenuCategoriesResponse];

    @override
    final String wireName = r'MenuCategoriesResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuCategoriesResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(BuiltList, [FullType(MenuCategoryData)])));
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
    MenuCategoriesResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuCategoriesResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(MenuCategoryData)])) as BuiltList<MenuCategoryData>;
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

