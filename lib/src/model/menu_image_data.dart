//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_image_data.g.dart';

/// MenuImageData
///
/// Properties:
/// * [imageDescription] - 画像の説明
/// * [uploadImageUrl] - 画像のパス
abstract class MenuImageData implements Built<MenuImageData, MenuImageDataBuilder> {
    /// 画像の説明
    @BuiltValueField(wireName: r'imageDescription')
    String? get imageDescription;

    /// 画像のパス
    @BuiltValueField(wireName: r'uploadImageUrl')
    String? get uploadImageUrl;

    MenuImageData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuImageDataBuilder b) => b;

    factory MenuImageData([void updates(MenuImageDataBuilder b)]) = _$MenuImageData;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuImageData> get serializer => _$MenuImageDataSerializer();
}

class _$MenuImageDataSerializer implements StructuredSerializer<MenuImageData> {
    @override
    final Iterable<Type> types = const [MenuImageData, _$MenuImageData];

    @override
    final String wireName = r'MenuImageData';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuImageData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.imageDescription != null) {
            result
                ..add(r'imageDescription')
                ..add(serializers.serialize(object.imageDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.uploadImageUrl != null) {
            result
                ..add(r'uploadImageUrl')
                ..add(serializers.serialize(object.uploadImageUrl,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    MenuImageData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuImageDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'imageDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.imageDescription = valueDes;
                    break;
                case r'uploadImageUrl':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.uploadImageUrl = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

