//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_menu_param.g.dart';

/// FavoriteMenuParam
///
/// Properties:
/// * [id] - 献立ID
/// * [added] - お気に入りに追加した
abstract class FavoriteMenuParam implements Built<FavoriteMenuParam, FavoriteMenuParamBuilder> {
    /// 献立ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// お気に入りに追加した
    @BuiltValueField(wireName: r'added')
    bool? get added;

    FavoriteMenuParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FavoriteMenuParamBuilder b) => b;

    factory FavoriteMenuParam([void updates(FavoriteMenuParamBuilder b)]) = _$FavoriteMenuParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<FavoriteMenuParam> get serializer => _$FavoriteMenuParamSerializer();
}

class _$FavoriteMenuParamSerializer implements StructuredSerializer<FavoriteMenuParam> {
    @override
    final Iterable<Type> types = const [FavoriteMenuParam, _$FavoriteMenuParam];

    @override
    final String wireName = r'FavoriteMenuParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, FavoriteMenuParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.added != null) {
            result
                ..add(r'added')
                ..add(serializers.serialize(object.added,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    FavoriteMenuParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteMenuParamBuilder();

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
                case r'added':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.added = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

