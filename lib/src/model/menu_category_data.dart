//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_category_data.g.dart';

/// MenuCategoryData
///
/// Properties:
/// * [id] - 献立カテゴリID
/// * [name] - 献立カテゴリ名
abstract class MenuCategoryData implements Built<MenuCategoryData, MenuCategoryDataBuilder> {
    /// 献立カテゴリID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 献立カテゴリ名
    @BuiltValueField(wireName: r'name')
    String? get name;

    MenuCategoryData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuCategoryDataBuilder b) => b;

    factory MenuCategoryData([void updates(MenuCategoryDataBuilder b)]) = _$MenuCategoryData;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuCategoryData> get serializer => _$MenuCategoryDataSerializer();
}

class _$MenuCategoryDataSerializer implements StructuredSerializer<MenuCategoryData> {
    @override
    final Iterable<Type> types = const [MenuCategoryData, _$MenuCategoryData];

    @override
    final String wireName = r'MenuCategoryData';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuCategoryData object,
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
    MenuCategoryData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuCategoryDataBuilder();

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

