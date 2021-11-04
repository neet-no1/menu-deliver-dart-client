//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompositionData {
  /// Returns a new [CompositionData] instance.
  CompositionData({
    this.id,
    this.name,
    this.refuse,
    this.energy,
    this.protein,
    this.lipid,
    this.carbohydrate,
    this.calcium,
    this.iron,
    this.cholesterol,
    this.dietaryFibers,
    this.saltEquivalents,
  });

  /// 食品ID
  int id;

  /// 食品名
  String name;

  /// 廃棄率(%)
  int refuse;

  /// エネルギー(kcal)
  int energy;

  /// たんぱく質(g)
  double protein;

  /// 脂質(g)
  double lipid;

  /// 炭水化物(g)
  double carbohydrate;

  /// カルシウム(mg)
  int calcium;

  /// 鉄(mg)
  double iron;

  /// コレステロール(mg)
  int cholesterol;

  /// 食物繊維
  double dietaryFibers;

  /// 食塩相当量(g)
  double saltEquivalents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompositionData &&
     other.id == id &&
     other.name == name &&
     other.refuse == refuse &&
     other.energy == energy &&
     other.protein == protein &&
     other.lipid == lipid &&
     other.carbohydrate == carbohydrate &&
     other.calcium == calcium &&
     other.iron == iron &&
     other.cholesterol == cholesterol &&
     other.dietaryFibers == dietaryFibers &&
     other.saltEquivalents == saltEquivalents;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (refuse == null ? 0 : refuse.hashCode) +
    (energy == null ? 0 : energy.hashCode) +
    (protein == null ? 0 : protein.hashCode) +
    (lipid == null ? 0 : lipid.hashCode) +
    (carbohydrate == null ? 0 : carbohydrate.hashCode) +
    (calcium == null ? 0 : calcium.hashCode) +
    (iron == null ? 0 : iron.hashCode) +
    (cholesterol == null ? 0 : cholesterol.hashCode) +
    (dietaryFibers == null ? 0 : dietaryFibers.hashCode) +
    (saltEquivalents == null ? 0 : saltEquivalents.hashCode);

  @override
  String toString() => 'CompositionData[id=$id, name=$name, refuse=$refuse, energy=$energy, protein=$protein, lipid=$lipid, carbohydrate=$carbohydrate, calcium=$calcium, iron=$iron, cholesterol=$cholesterol, dietaryFibers=$dietaryFibers, saltEquivalents=$saltEquivalents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (refuse != null) {
      json[r'refuse'] = refuse;
    }
    if (energy != null) {
      json[r'energy'] = energy;
    }
    if (protein != null) {
      json[r'protein'] = protein;
    }
    if (lipid != null) {
      json[r'lipid'] = lipid;
    }
    if (carbohydrate != null) {
      json[r'carbohydrate'] = carbohydrate;
    }
    if (calcium != null) {
      json[r'calcium'] = calcium;
    }
    if (iron != null) {
      json[r'iron'] = iron;
    }
    if (cholesterol != null) {
      json[r'cholesterol'] = cholesterol;
    }
    if (dietaryFibers != null) {
      json[r'dietaryFibers'] = dietaryFibers;
    }
    if (saltEquivalents != null) {
      json[r'saltEquivalents'] = saltEquivalents;
    }
    return json;
  }

  /// Returns a new [CompositionData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompositionData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CompositionData(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        refuse: mapValueOfType<int>(json, r'refuse'),
        energy: mapValueOfType<int>(json, r'energy'),
        protein: mapValueOfType<double>(json, r'protein'),
        lipid: mapValueOfType<double>(json, r'lipid'),
        carbohydrate: mapValueOfType<double>(json, r'carbohydrate'),
        calcium: mapValueOfType<int>(json, r'calcium'),
        iron: mapValueOfType<double>(json, r'iron'),
        cholesterol: mapValueOfType<int>(json, r'cholesterol'),
        dietaryFibers: mapValueOfType<double>(json, r'dietaryFibers'),
        saltEquivalents: mapValueOfType<double>(json, r'saltEquivalents'),
      );
    }
    return null;
  }

  static List<CompositionData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CompositionData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CompositionData>[];

  static Map<String, CompositionData> mapFromJson(dynamic json) {
    final map = <String, CompositionData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CompositionData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CompositionData-objects as value to a dart map
  static Map<String, List<CompositionData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CompositionData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CompositionData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

