//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_reset_param.g.dart';

/// PasswordResetParam
///
/// Properties:
/// * [email] - パスワードリセット用メールアドレス
abstract class PasswordResetParam implements Built<PasswordResetParam, PasswordResetParamBuilder> {
    /// パスワードリセット用メールアドレス
    @BuiltValueField(wireName: r'email')
    String? get email;

    PasswordResetParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PasswordResetParamBuilder b) => b;

    factory PasswordResetParam([void updates(PasswordResetParamBuilder b)]) = _$PasswordResetParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<PasswordResetParam> get serializer => _$PasswordResetParamSerializer();
}

class _$PasswordResetParamSerializer implements StructuredSerializer<PasswordResetParam> {
    @override
    final Iterable<Type> types = const [PasswordResetParam, _$PasswordResetParam];

    @override
    final String wireName = r'PasswordResetParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, PasswordResetParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    PasswordResetParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PasswordResetParamBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

