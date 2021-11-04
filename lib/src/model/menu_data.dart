//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/menu_image_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu_data.g.dart';

/// MenuData
///
/// Properties:
/// * [id] - 献立ID
/// * [title] - 献立のタイトル
/// * [subTitle] - 献立のサブタイトル
/// * [categoryId] - 献立のカテゴリ
/// * [thumbPath] - サムネイル画像パス
/// * [contents] - 献立の栄養素・作り方の情報パス
/// * [imagePaths] 
/// * [opened] - 公開済みか
/// * [mine] - 自分が投稿したものか
abstract class MenuData implements Built<MenuData, MenuDataBuilder> {
    /// 献立ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 献立のタイトル
    @BuiltValueField(wireName: r'title')
    String? get title;

    /// 献立のサブタイトル
    @BuiltValueField(wireName: r'subTitle')
    String? get subTitle;

    /// 献立のカテゴリ
    @BuiltValueField(wireName: r'categoryId')
    int? get categoryId;

    /// サムネイル画像パス
    @BuiltValueField(wireName: r'thumbPath')
    String? get thumbPath;

    /// 献立の栄養素・作り方の情報パス
    @BuiltValueField(wireName: r'contents')
    String? get contents;

    @BuiltValueField(wireName: r'imagePaths')
    BuiltList<MenuImageData>? get imagePaths;

    /// 公開済みか
    @BuiltValueField(wireName: r'opened')
    bool? get opened;

    /// 自分が投稿したものか
    @BuiltValueField(wireName: r'mine')
    bool? get mine;

    MenuData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MenuDataBuilder b) => b;

    factory MenuData([void updates(MenuDataBuilder b)]) = _$MenuData;

    @BuiltValueSerializer(custom: true)
    static Serializer<MenuData> get serializer => _$MenuDataSerializer();
}

class _$MenuDataSerializer implements StructuredSerializer<MenuData> {
    @override
    final Iterable<Type> types = const [MenuData, _$MenuData];

    @override
    final String wireName = r'MenuData';

    @override
    Iterable<Object?> serialize(Serializers serializers, MenuData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.subTitle != null) {
            result
                ..add(r'subTitle')
                ..add(serializers.serialize(object.subTitle,
                    specifiedType: const FullType(String)));
        }
        if (object.categoryId != null) {
            result
                ..add(r'categoryId')
                ..add(serializers.serialize(object.categoryId,
                    specifiedType: const FullType(int)));
        }
        if (object.thumbPath != null) {
            result
                ..add(r'thumbPath')
                ..add(serializers.serialize(object.thumbPath,
                    specifiedType: const FullType(String)));
        }
        if (object.contents != null) {
            result
                ..add(r'contents')
                ..add(serializers.serialize(object.contents,
                    specifiedType: const FullType(String)));
        }
        if (object.imagePaths != null) {
            result
                ..add(r'imagePaths')
                ..add(serializers.serialize(object.imagePaths,
                    specifiedType: const FullType(BuiltList, [FullType(MenuImageData)])));
        }
        if (object.opened != null) {
            result
                ..add(r'opened')
                ..add(serializers.serialize(object.opened,
                    specifiedType: const FullType(bool)));
        }
        if (object.mine != null) {
            result
                ..add(r'mine')
                ..add(serializers.serialize(object.mine,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    MenuData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MenuDataBuilder();

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
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'subTitle':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subTitle = valueDes;
                    break;
                case r'categoryId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.categoryId = valueDes;
                    break;
                case r'thumbPath':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.thumbPath = valueDes;
                    break;
                case r'contents':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.contents = valueDes;
                    break;
                case r'imagePaths':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(MenuImageData)])) as BuiltList<MenuImageData>;
                    result.imagePaths.replace(valueDes);
                    break;
                case r'opened':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.opened = valueDes;
                    break;
                case r'mine':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.mine = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

