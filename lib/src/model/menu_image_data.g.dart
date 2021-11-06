// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_image_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuImageData extends MenuImageData {
  @override
  final String? imageDescription;
  @override
  final String? uploadImageUrl;

  factory _$MenuImageData([void Function(MenuImageDataBuilder)? updates]) =>
      (new MenuImageDataBuilder()..update(updates)).build();

  _$MenuImageData._({this.imageDescription, this.uploadImageUrl}) : super._();

  @override
  MenuImageData rebuild(void Function(MenuImageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuImageDataBuilder toBuilder() => new MenuImageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuImageData &&
        imageDescription == other.imageDescription &&
        uploadImageUrl == other.uploadImageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, imageDescription.hashCode), uploadImageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MenuImageData')
          ..add('imageDescription', imageDescription)
          ..add('uploadImageUrl', uploadImageUrl))
        .toString();
  }
}

class MenuImageDataBuilder
    implements Builder<MenuImageData, MenuImageDataBuilder> {
  _$MenuImageData? _$v;

  String? _imageDescription;
  String? get imageDescription => _$this._imageDescription;
  set imageDescription(String? imageDescription) =>
      _$this._imageDescription = imageDescription;

  String? _uploadImageUrl;
  String? get uploadImageUrl => _$this._uploadImageUrl;
  set uploadImageUrl(String? uploadImageUrl) =>
      _$this._uploadImageUrl = uploadImageUrl;

  MenuImageDataBuilder() {
    MenuImageData._defaults(this);
  }

  MenuImageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageDescription = $v.imageDescription;
      _uploadImageUrl = $v.uploadImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuImageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuImageData;
  }

  @override
  void update(void Function(MenuImageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MenuImageData build() {
    final _$result = _$v ??
        new _$MenuImageData._(
            imageDescription: imageDescription, uploadImageUrl: uploadImageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
