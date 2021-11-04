//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'composition_data.g.dart';

/// CompositionData
///
/// Properties:
/// * [id] - 食品ID
/// * [name] - 食品名
/// * [refuse] - 廃棄率(%)
/// * [energy] - エネルギー(kcal)
/// * [protein] - たんぱく質(g)
/// * [lipid] - 脂質(g)
/// * [carbohydrate] - 炭水化物(g)
/// * [calcium] - カルシウム(mg)
/// * [iron] - 鉄(mg)
/// * [cholesterol] - コレステロール(mg)
/// * [dietaryFibers] - 食物繊維
/// * [saltEquivalents] - 食塩相当量(g)
abstract class CompositionData implements Built<CompositionData, CompositionDataBuilder> {
    /// 食品ID
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// 食品名
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// 廃棄率(%)
    @BuiltValueField(wireName: r'refuse')
    int? get refuse;

    /// エネルギー(kcal)
    @BuiltValueField(wireName: r'energy')
    int? get energy;

    /// たんぱく質(g)
    @BuiltValueField(wireName: r'protein')
    double? get protein;

    /// 脂質(g)
    @BuiltValueField(wireName: r'lipid')
    double? get lipid;

    /// 炭水化物(g)
    @BuiltValueField(wireName: r'carbohydrate')
    double? get carbohydrate;

    /// カルシウム(mg)
    @BuiltValueField(wireName: r'calcium')
    int? get calcium;

    /// 鉄(mg)
    @BuiltValueField(wireName: r'iron')
    double? get iron;

    /// コレステロール(mg)
    @BuiltValueField(wireName: r'cholesterol')
    int? get cholesterol;

    /// 食物繊維
    @BuiltValueField(wireName: r'dietaryFibers')
    double? get dietaryFibers;

    /// 食塩相当量(g)
    @BuiltValueField(wireName: r'saltEquivalents')
    double? get saltEquivalents;

    CompositionData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CompositionDataBuilder b) => b;

    factory CompositionData([void updates(CompositionDataBuilder b)]) = _$CompositionData;

    @BuiltValueSerializer(custom: true)
    static Serializer<CompositionData> get serializer => _$CompositionDataSerializer();
}

class _$CompositionDataSerializer implements StructuredSerializer<CompositionData> {
    @override
    final Iterable<Type> types = const [CompositionData, _$CompositionData];

    @override
    final String wireName = r'CompositionData';

    @override
    Iterable<Object?> serialize(Serializers serializers, CompositionData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.refuse != null) {
            result
                ..add(r'refuse')
                ..add(serializers.serialize(object.refuse,
                    specifiedType: const FullType(int)));
        }
        if (object.energy != null) {
            result
                ..add(r'energy')
                ..add(serializers.serialize(object.energy,
                    specifiedType: const FullType(int)));
        }
        if (object.protein != null) {
            result
                ..add(r'protein')
                ..add(serializers.serialize(object.protein,
                    specifiedType: const FullType(double)));
        }
        if (object.lipid != null) {
            result
                ..add(r'lipid')
                ..add(serializers.serialize(object.lipid,
                    specifiedType: const FullType(double)));
        }
        if (object.carbohydrate != null) {
            result
                ..add(r'carbohydrate')
                ..add(serializers.serialize(object.carbohydrate,
                    specifiedType: const FullType(double)));
        }
        if (object.calcium != null) {
            result
                ..add(r'calcium')
                ..add(serializers.serialize(object.calcium,
                    specifiedType: const FullType(int)));
        }
        if (object.iron != null) {
            result
                ..add(r'iron')
                ..add(serializers.serialize(object.iron,
                    specifiedType: const FullType(double)));
        }
        if (object.cholesterol != null) {
            result
                ..add(r'cholesterol')
                ..add(serializers.serialize(object.cholesterol,
                    specifiedType: const FullType(int)));
        }
        if (object.dietaryFibers != null) {
            result
                ..add(r'dietaryFibers')
                ..add(serializers.serialize(object.dietaryFibers,
                    specifiedType: const FullType(double)));
        }
        if (object.saltEquivalents != null) {
            result
                ..add(r'saltEquivalents')
                ..add(serializers.serialize(object.saltEquivalents,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    CompositionData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompositionDataBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'refuse':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.refuse = valueDes;
                    break;
                case r'energy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.energy = valueDes;
                    break;
                case r'protein':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.protein = valueDes;
                    break;
                case r'lipid':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.lipid = valueDes;
                    break;
                case r'carbohydrate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.carbohydrate = valueDes;
                    break;
                case r'calcium':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.calcium = valueDes;
                    break;
                case r'iron':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.iron = valueDes;
                    break;
                case r'cholesterol':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.cholesterol = valueDes;
                    break;
                case r'dietaryFibers':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.dietaryFibers = valueDes;
                    break;
                case r'saltEquivalents':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.saltEquivalents = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

