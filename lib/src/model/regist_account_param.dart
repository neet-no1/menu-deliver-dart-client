//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regist_account_param.g.dart';

/// RegistAccountParam
///
/// Properties:
/// * [email] - メールアドレス
/// * [password] - パスワード
/// * [passwordConfirm] - パスワード再確認
abstract class RegistAccountParam implements Built<RegistAccountParam, RegistAccountParamBuilder> {
    /// メールアドレス
    @BuiltValueField(wireName: r'email')
    String? get email;

    /// パスワード
    @BuiltValueField(wireName: r'password')
    String? get password;

    /// パスワード再確認
    @BuiltValueField(wireName: r'passwordConfirm')
    String? get passwordConfirm;

    RegistAccountParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RegistAccountParamBuilder b) => b;

    factory RegistAccountParam([void updates(RegistAccountParamBuilder b)]) = _$RegistAccountParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<RegistAccountParam> get serializer => _$RegistAccountParamSerializer();
}

class _$RegistAccountParamSerializer implements StructuredSerializer<RegistAccountParam> {
    @override
    final Iterable<Type> types = const [RegistAccountParam, _$RegistAccountParam];

    @override
    final String wireName = r'RegistAccountParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, RegistAccountParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        if (object.passwordConfirm != null) {
            result
                ..add(r'passwordConfirm')
                ..add(serializers.serialize(object.passwordConfirm,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    RegistAccountParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RegistAccountParamBuilder();

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
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'passwordConfirm':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.passwordConfirm = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

