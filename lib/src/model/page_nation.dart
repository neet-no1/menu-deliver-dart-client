//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_nation.g.dart';

/// PageNation
///
/// Properties:
/// * [totalPages] - 総ページ数
/// * [currentPage] - 現在のページ数
abstract class PageNation implements Built<PageNation, PageNationBuilder> {
    /// 総ページ数
    @BuiltValueField(wireName: r'totalPages')
    int? get totalPages;

    /// 現在のページ数
    @BuiltValueField(wireName: r'currentPage')
    int? get currentPage;

    PageNation._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PageNationBuilder b) => b;

    factory PageNation([void updates(PageNationBuilder b)]) = _$PageNation;

    @BuiltValueSerializer(custom: true)
    static Serializer<PageNation> get serializer => _$PageNationSerializer();
}

class _$PageNationSerializer implements StructuredSerializer<PageNation> {
    @override
    final Iterable<Type> types = const [PageNation, _$PageNation];

    @override
    final String wireName = r'PageNation';

    @override
    Iterable<Object?> serialize(Serializers serializers, PageNation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.totalPages != null) {
            result
                ..add(r'totalPages')
                ..add(serializers.serialize(object.totalPages,
                    specifiedType: const FullType(int)));
        }
        if (object.currentPage != null) {
            result
                ..add(r'currentPage')
                ..add(serializers.serialize(object.currentPage,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    PageNation deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PageNationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'totalPages':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalPages = valueDes;
                    break;
                case r'currentPage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.currentPage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

