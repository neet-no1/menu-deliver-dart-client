//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'follow_user_param.g.dart';

/// FollowUserParam
///
/// Properties:
/// * [userId] - ユーザID
abstract class FollowUserParam implements Built<FollowUserParam, FollowUserParamBuilder> {
    /// ユーザID
    @BuiltValueField(wireName: r'userId')
    int? get userId;

    FollowUserParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FollowUserParamBuilder b) => b;

    factory FollowUserParam([void updates(FollowUserParamBuilder b)]) = _$FollowUserParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<FollowUserParam> get serializer => _$FollowUserParamSerializer();
}

class _$FollowUserParamSerializer implements StructuredSerializer<FollowUserParam> {
    @override
    final Iterable<Type> types = const [FollowUserParam, _$FollowUserParam];

    @override
    final String wireName = r'FollowUserParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, FollowUserParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.userId != null) {
            result
                ..add(r'userId')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    FollowUserParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FollowUserParamBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'userId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

