//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/question_category_data.dart';
import 'package:openapi/src/model/error_info.dart';
import 'package:openapi/src/model/menu_deliver_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_categories_response.g.dart';

/// QuestionCategoriesResponse
///
/// Properties:
/// * [info] 
/// * [code] - 0以外はエラーコード
/// * [errorInfo] 
abstract class QuestionCategoriesResponse implements Built<QuestionCategoriesResponse, QuestionCategoriesResponseBuilder> {
    @BuiltValueField(wireName: r'info')
    BuiltList<QuestionCategoryData>? get info;

    /// 0以外はエラーコード
    @BuiltValueField(wireName: r'code')
    int? get code;

    @BuiltValueField(wireName: r'errorInfo')
    ErrorInfo? get errorInfo;

    QuestionCategoriesResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QuestionCategoriesResponseBuilder b) => b;

    factory QuestionCategoriesResponse([void updates(QuestionCategoriesResponseBuilder b)]) = _$QuestionCategoriesResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<QuestionCategoriesResponse> get serializer => _$QuestionCategoriesResponseSerializer();
}

class _$QuestionCategoriesResponseSerializer implements StructuredSerializer<QuestionCategoriesResponse> {
    @override
    final Iterable<Type> types = const [QuestionCategoriesResponse, _$QuestionCategoriesResponse];

    @override
    final String wireName = r'QuestionCategoriesResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, QuestionCategoriesResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.info != null) {
            result
                ..add(r'info')
                ..add(serializers.serialize(object.info,
                    specifiedType: const FullType(BuiltList, [FullType(QuestionCategoryData)])));
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
    QuestionCategoriesResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QuestionCategoriesResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'info':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(QuestionCategoryData)])) as BuiltList<QuestionCategoryData>;
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

