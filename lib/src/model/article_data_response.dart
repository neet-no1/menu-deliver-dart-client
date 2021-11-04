//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/article_data.dart';
import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article_data_response.g.dart';

/// ArticleDataResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class ArticleDataResponse implements Built<ArticleDataResponse, ArticleDataResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    ArticleData? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    ArticleDataResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ArticleDataResponseBuilder b) => b;

    factory ArticleDataResponse([void updates(ArticleDataResponseBuilder b)]) = _$ArticleDataResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<ArticleDataResponse> get serializer => _$ArticleDataResponseSerializer();
}

class _$ArticleDataResponseSerializer implements StructuredSerializer<ArticleDataResponse> {
    @override
    final Iterable<Type> types = const [ArticleDataResponse, _$ArticleDataResponse];

    @override
    final String wireName = r'ArticleDataResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, ArticleDataResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(ArticleData)));
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
    ArticleDataResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ArticleDataResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ArticleData)) as ArticleData;
                    result.info.replace(valueDes);
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

