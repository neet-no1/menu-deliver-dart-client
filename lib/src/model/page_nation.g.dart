// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_nation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageNation extends PageNation {
  @override
  final int? totalPages;
  @override
  final int? currentPage;

  factory _$PageNation([void Function(PageNationBuilder)? updates]) =>
      (new PageNationBuilder()..update(updates)).build();

  _$PageNation._({this.totalPages, this.currentPage}) : super._();

  @override
  PageNation rebuild(void Function(PageNationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageNationBuilder toBuilder() => new PageNationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageNation &&
        totalPages == other.totalPages &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalPages.hashCode), currentPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageNation')
          ..add('totalPages', totalPages)
          ..add('currentPage', currentPage))
        .toString();
  }
}

class PageNationBuilder implements Builder<PageNation, PageNationBuilder> {
  _$PageNation? _$v;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  PageNationBuilder() {
    PageNation._defaults(this);
  }

  PageNationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalPages = $v.totalPages;
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageNation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageNation;
  }

  @override
  void update(void Function(PageNationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageNation build() {
    final _$result = _$v ??
        new _$PageNation._(totalPages: totalPages, currentPage: currentPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
