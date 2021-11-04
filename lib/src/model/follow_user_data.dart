//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'follow_user_data.g.dart';

/// FollowUserData
///
/// Properties:
/// * [id] - ユーザID
/// * [imgPath] - ユーザアイコン画像のパス
/// * [name] - ニックネーム
abstract class FollowUserData implements Built<FollowUserData, FollowUserDataBuilder> {
    /// ユーザID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// ユーザアイコン画像のパス
    @BuiltValueField(wireName: r'imgPath')
    String? get imgPath;

    /// ニックネーム
    @BuiltValueField(wireName: r'name')
    String? get name;

    FollowUserData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FollowUserDataBuilder b) => b;

    factory FollowUserData([void updates(FollowUserDataBuilder b)]) = _$FollowUserData;

    @BuiltValueSerializer(custom: true)
    static Serializer<FollowUserData> get serializer => _$FollowUserDataSerializer();
}

class _$FollowUserDataSerializer implements StructuredSerializer<FollowUserData> {
    @override
    final Iterable<Type> types = const [FollowUserData, _$FollowUserData];

    @override
    final String wireName = r'FollowUserData';

    @override
    Iterable<Object?> serialize(Serializers serializers, FollowUserData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.imgPath != null) {
            result
                ..add(r'imgPath')
                ..add(serializers.serialize(object.imgPath,
                    specifiedType: const FullType(String)));
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
    FollowUserData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FollowUserDataBuilder();

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
                case r'imgPath':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imgPath = valueDes;
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

