//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_article_is_added_response.g.dart';

/// FavoriteArticleIsAddedResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class FavoriteArticleIsAddedResponse implements Built<FavoriteArticleIsAddedResponse, FavoriteArticleIsAddedResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    bool? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    FavoriteArticleIsAddedResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FavoriteArticleIsAddedResponseBuilder b) => b;

    factory FavoriteArticleIsAddedResponse([void updates(FavoriteArticleIsAddedResponseBuilder b)]) = _$FavoriteArticleIsAddedResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<FavoriteArticleIsAddedResponse> get serializer => _$FavoriteArticleIsAddedResponseSerializer();
}

class _$FavoriteArticleIsAddedResponseSerializer implements StructuredSerializer<FavoriteArticleIsAddedResponse> {
    @override
    final Iterable<Type> types = const [FavoriteArticleIsAddedResponse, _$FavoriteArticleIsAddedResponse];

    @override
    final String wireName = r'FavoriteArticleIsAddedResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, FavoriteArticleIsAddedResponse object,
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
    FavoriteArticleIsAddedResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FavoriteArticleIsAddedResponseBuilder();

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

