//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_auth_response.g.dart';

/// AccountAuthResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class AccountAuthResponse implements Built<AccountAuthResponse, AccountAuthResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    bool? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    AccountAuthResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountAuthResponseBuilder b) => b;

    factory AccountAuthResponse([void updates(AccountAuthResponseBuilder b)]) = _$AccountAuthResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountAuthResponse> get serializer => _$AccountAuthResponseSerializer();
}

class _$AccountAuthResponseSerializer implements StructuredSerializer<AccountAuthResponse> {
    @override
    final Iterable<Type> types = const [AccountAuthResponse, _$AccountAuthResponse];

    @override
    final String wireName = r'AccountAuthResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountAuthResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(bool)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(int)));
        }
        if (object.errorInfo != null) {
            result
                ..add(r'errorInfo')
                ..add(serializers.serialize(object.errorInfo,
                    specifiedType: const FullType(ErrorInfo)));
        }
        return result;
    }

    @override
    AccountAuthResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountAuthResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.info = valueDes;
                    break;
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.code = valueDes;
                    break;
                case r'errorInfo':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ErrorInfo)) as ErrorInfo;
                    result.errorInfo.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

