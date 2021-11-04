//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_password_param.g.dart';

/// UpdatePasswordParam
///
/// Properties:
/// * [currentPassword] - 現在パスワード
/// * [newPassword] - 新規パスワード
/// * [newPasswordConfirm] - 新規パスワード再確認
abstract class UpdatePasswordParam implements Built<UpdatePasswordParam, UpdatePasswordParamBuilder> {
    /// 現在パスワード
    @BuiltValueField(wireName: r'currentPassword')
    String? get currentPassword;

    /// 新規パスワード
    @BuiltValueField(wireName: r'newPassword')
    String? get newPassword;

    /// 新規パスワード再確認
    @BuiltValueField(wireName: r'newPasswordConfirm')
    String? get newPasswordConfirm;

    UpdatePasswordParam._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UpdatePasswordParamBuilder b) => b;

    factory UpdatePasswordParam([void updates(UpdatePasswordParamBuilder b)]) = _$UpdatePasswordParam;

    @BuiltValueSerializer(custom: true)
    static Serializer<UpdatePasswordParam> get serializer => _$UpdatePasswordParamSerializer();
}

class _$UpdatePasswordParamSerializer implements StructuredSerializer<UpdatePasswordParam> {
    @override
    final Iterable<Type> types = const [UpdatePasswordParam, _$UpdatePasswordParam];

    @override
    final String wireName = r'UpdatePasswordParam';

    @override
    Iterable<Object?> serialize(Serializers serializers, UpdatePasswordParam object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.currentPassword != null) {
            result
                ..add(r'currentPassword')
                ..add(serializers.serialize(object.currentPassword,
                    specifiedType: const FullType(String)));
        }
        if (object.newPassword != null) {
            result
                ..add(r'newPassword')
                ..add(serializers.serialize(object.newPassword,
                    specifiedType: const FullType(String)));
        }
        if (object.newPasswordConfirm != null) {
            result
                ..add(r'newPasswordConfirm')
                ..add(serializers.serialize(object.newPasswordConfirm,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UpdatePasswordParam deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UpdatePasswordParamBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currentPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currentPassword = valueDes;
                    break;
                case r'newPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.newPassword = valueDes;
                    break;
                case r'newPasswordConfirm':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.newPasswordConfirm = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

