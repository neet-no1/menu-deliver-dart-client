//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_data.g.dart';

/// AccountData
///
/// Properties:
/// * [id] - ユーザID
/// * [imgPath] - ユーザアイコン画像のパス
/// * [name] - ニックネーム
/// * [email] - メールアドレス
abstract class AccountData implements Built<AccountData, AccountDataBuilder> {
    /// ユーザID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// ユーザアイコン画像のパス
    @BuiltValueField(wireName: r'imgPath')
    String? get imgPath;

    /// ニックネーム
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// メールアドレス
    @BuiltValueField(wireName: r'email')
    String? get email;

    AccountData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountDataBuilder b) => b;

    factory AccountData([void updates(AccountDataBuilder b)]) = _$AccountData;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountData> get serializer => _$AccountDataSerializer();
}

class _$AccountDataSerializer implements StructuredSerializer<AccountData> {
    @override
    final Iterable<Type> types = const [AccountData, _$AccountData];

    @override
    final String wireName = r'AccountData';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountData object,
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
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AccountData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountDataBuilder();

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

