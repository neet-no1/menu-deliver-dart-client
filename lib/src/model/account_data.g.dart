// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountData extends AccountData {
  @override
  final int? id;
  @override
  final String? imgPath;
  @override
  final String? name;
  @override
  final String? email;

  factory _$AccountData([void Function(AccountDataBuilder)? updates]) =>
      (new AccountDataBuilder()..update(updates)).build();

  _$AccountData._({this.id, this.imgPath, this.name, this.email}) : super._();

  @override
  AccountData rebuild(void Function(AccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDataBuilder toBuilder() => new AccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountData &&
        id == other.id &&
        imgPath == other.imgPath &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), imgPath.hashCode), name.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountData')
          ..add('id', id)
          ..add('imgPath', imgPath)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class AccountDataBuilder implements Builder<AccountData, AccountDataBuilder> {
  _$AccountData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imgPath;
  String? get imgPath => _$this._imgPath;
  set imgPath(String? imgPath) => _$this._imgPath = imgPath;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AccountDataBuilder() {
    AccountData._defaults(this);
  }

  AccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _imgPath = $v.imgPath;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountData;
  }

  @override
  void update(void Function(AccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountData build() {
    final _$result = _$v ??
        new _$AccountData._(id: id, imgPath: imgPath, name: name, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
