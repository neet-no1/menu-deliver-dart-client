//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_menu_param.g.dart';

/// DeleteMenuParam
///
/// Properties:
/// * [id] - 献立ID
abstract class DeleteMenuParam implements Built<DeleteMenuParam, DeleteMenuParamBuilder> {
    /// 献立ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    DeleteMenuParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DeleteMenuParamBuilder b) => b;

    factory DeleteMenuParam([void updates(DeleteMenuParamBuilder b)]) = _$DeleteMenuParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<DeleteMenuParam> get serializer => _$DeleteMenuParamSerializer();
}

class _$DeleteMenuParamSerializer implements StructuredSerializer<DeleteMenuParam> {
    @override
    final Iterable<Type> types = const [DeleteMenuParam, _$DeleteMenuParam];

    @override
    final String wireName = r'DeleteMenuParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, DeleteMenuParam object,
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
    DeleteMenuParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeleteMenuParamBuilder();

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

