//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommend_meta_data_response.g.dart';

/// RecommendMetaDataResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class RecommendMetaDataResponse implements Built<RecommendMetaDataResponse, RecommendMetaDataResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    JsonObject? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    RecommendMetaDataResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RecommendMetaDataResponseBuilder b) => b;

    factory RecommendMetaDataResponse([void updates(RecommendMetaDataResponseBuilder b)]) = _$RecommendMetaDataResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<RecommendMetaDataResponse> get serializer => _$RecommendMetaDataResponseSerializer();
}

class _$RecommendMetaDataResponseSerializer implements StructuredSerializer<RecommendMetaDataResponse> {
    @override
    final Iterable<Type> types = const [RecommendMetaDataResponse, _$RecommendMetaDataResponse];

    @override
    final String wireName = r'RecommendMetaDataResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, RecommendMetaDataResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(JsonObject)));
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
    RecommendMetaDataResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RecommendMetaDataResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
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

