//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_article_param.g.dart';

/// FavoriteArticleParam
///
/// Properties:
/// * [id] - 記事ID
/// * [added] - お気に入りに追加した
abstract class FavoriteArticleParam implements Built<FavoriteArticleParam, FavoriteArticleParamBuilder> {
    /// 記事ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// お気に入りに追加した
    @BuiltValueField(wireName: r'added')
    bool? get added;

    FavoriteArticleParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FavoriteArticleParamBuilder b) => b;

    factory FavoriteArticleParam([void updates(FavoriteArticleParamBuilder b)]) = _$FavoriteArticleParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<FavoriteArticleParam> get serializer => _$FavoriteArticleParamSerializer();
}

class _$FavoriteArticleParamSerializer implements StructuredSerializer<FavoriteArticleParam> {
    @override
    final Iterable<Type> types = const [FavoriteArticleParam, _$FavoriteArticleParam];

    @override
    final String wireName = r'FavoriteArticleParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, FavoriteArticleParam object,
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
    FavoriteArticleParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteArticleParamBuilder();

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

