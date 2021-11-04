//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_article_param.g.dart';

/// DeleteArticleParam
///
/// Properties:
/// * [id] - 記事ID
abstract class DeleteArticleParam implements Built<DeleteArticleParam, DeleteArticleParamBuilder> {
    /// 記事ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    DeleteArticleParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DeleteArticleParamBuilder b) => b;

    factory DeleteArticleParam([void updates(DeleteArticleParamBuilder b)]) = _$DeleteArticleParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<DeleteArticleParam> get serializer => _$DeleteArticleParamSerializer();
}

class _$DeleteArticleParamSerializer implements StructuredSerializer<DeleteArticleParam> {
    @override
    final Iterable<Type> types = const [DeleteArticleParam, _$DeleteArticleParam];

    @override
    final String wireName = r'DeleteArticleParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, DeleteArticleParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    DeleteArticleParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeleteArticleParamBuilder();

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
            }
        }
        return result.build();
    }
}

