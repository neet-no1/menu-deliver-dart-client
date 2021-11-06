// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composition_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompositionData extends CompositionData {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? refuse;
  @override
  final int? energy;
  @override
  final double? protein;
  @override
  final double? lipid;
  @override
  final double? carbohydrate;
  @override
  final int? calcium;
  @override
  final double? iron;
  @override
  final int? cholesterol;
  @override
  final double? dietaryFibers;
  @override
  final double? saltEquivalents;

  factory _$CompositionData([void Function(CompositionDataBuilder)? updates]) =>
      (new CompositionDataBuilder()..update(updates)).build();

  _$CompositionData._(
      {this.id,
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
      this.saltEquivalents})
      : super._();

  @override
  CompositionData rebuild(void Function(CompositionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompositionDataBuilder toBuilder() =>
      new CompositionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompositionData &&
        id == other.id &&
        name == other.name &&
        refuse == other.refuse &&
        energy == other.energy &&
        protein == other.protein &&
        lipid == other.lipid &&
        carbohydrate == other.carbohydrate &&
        calcium == other.calcium &&
        iron == other.iron &&
        cholesterol == other.cholesterol &&
        dietaryFibers == other.dietaryFibers &&
        saltEquivalents == other.saltEquivalents;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            refuse.hashCode),
                                        energy.hashCode),
                                    protein.hashCode),
                                lipid.hashCode),
                            carbohydrate.hashCode),
                        calcium.hashCode),
                    iron.hashCode),
                cholesterol.hashCode),
            dietaryFibers.hashCode),
        saltEquivalents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompositionData')
          ..add('id', id)
          ..add('name', name)
          ..add('refuse', refuse)
          ..add('energy', energy)
          ..add('protein', protein)
          ..add('lipid', lipid)
          ..add('carbohydrate', carbohydrate)
          ..add('calcium', calcium)
          ..add('iron', iron)
          ..add('cholesterol', cholesterol)
          ..add('dietaryFibers', dietaryFibers)
          ..add('saltEquivalents', saltEquivalents))
        .toString();
  }
}

class CompositionDataBuilder
    implements Builder<CompositionData, CompositionDataBuilder> {
  _$CompositionData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _refuse;
  int? get refuse => _$this._refuse;
  set refuse(int? refuse) => _$this._refuse = refuse;

  int? _energy;
  int? get energy => _$this._energy;
  set energy(int? energy) => _$this._energy = energy;

  double? _protein;
  double? get protein => _$this._protein;
  set protein(double? protein) => _$this._protein = protein;

  double? _lipid;
  double? get lipid => _$this._lipid;
  set lipid(double? lipid) => _$this._lipid = lipid;

  double? _carbohydrate;
  double? get carbohydrate => _$this._carbohydrate;
  set carbohydrate(double? carbohydrate) => _$this._carbohydrate = carbohydrate;

  int? _calcium;
  int? get calcium => _$this._calcium;
  set calcium(int? calcium) => _$this._calcium = calcium;

  double? _iron;
  double? get iron => _$this._iron;
  set iron(double? iron) => _$this._iron = iron;

  int? _cholesterol;
  int? get cholesterol => _$this._cholesterol;
  set cholesterol(int? cholesterol) => _$this._cholesterol = cholesterol;

  double? _dietaryFibers;
  double? get dietaryFibers => _$this._dietaryFibers;
  set dietaryFibers(double? dietaryFibers) =>
      _$this._dietaryFibers = dietaryFibers;

  double? _saltEquivalents;
  double? get saltEquivalents => _$this._saltEquivalents;
  set saltEquivalents(double? saltEquivalents) =>
      _$this._saltEquivalents = saltEquivalents;

  CompositionDataBuilder() {
    CompositionData._defaults(this);
  }

  CompositionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _refuse = $v.refuse;
      _energy = $v.energy;
      _protein = $v.protein;
      _lipid = $v.lipid;
      _carbohydrate = $v.carbohydrate;
      _calcium = $v.calcium;
      _iron = $v.iron;
      _cholesterol = $v.cholesterol;
      _dietaryFibers = $v.dietaryFibers;
      _saltEquivalents = $v.saltEquivalents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompositionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompositionData;
  }

  @override
  void update(void Function(CompositionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompositionData build() {
    final _$result = _$v ??
        new _$CompositionData._(
            id: id,
            name: name,
            refuse: refuse,
            energy: energy,
            protein: protein,
            lipid: lipid,
            carbohydrate: carbohydrate,
            calcium: calcium,
            iron: iron,
            cholesterol: cholesterol,
            dietaryFibers: dietaryFibers,
            saltEquivalents: saltEquivalents);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
