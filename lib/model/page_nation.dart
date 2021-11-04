//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageNation {
  /// Returns a new [PageNation] instance.
  PageNation({
    this.totalPages,
    this.currentPage,
  });

  /// 総ページ数
  int totalPages;

  /// 現在のページ数
  int currentPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageNation &&
     other.totalPages == totalPages &&
     other.currentPage == currentPage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (totalPages == null ? 0 : totalPages.hashCode) +
    (currentPage == null ? 0 : currentPage.hashCode);

  @override
  String toString() => 'PageNation[totalPages=$totalPages, currentPage=$currentPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (totalPages != null) {
      json[r'totalPages'] = totalPages;
    }
    if (currentPage != null) {
      json[r'currentPage'] = currentPage;
    }
    return json;
  }

  /// Returns a new [PageNation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageNation fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PageNation(
        totalPages: mapValueOfType<int>(json, r'totalPages'),
        currentPage: mapValueOfType<int>(json, r'currentPage'),
      );
    }
    return null;
  }

  static List<PageNation> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PageNation.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PageNation>[];

  static Map<String, PageNation> mapFromJson(dynamic json) {
    final map = <String, PageNation>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PageNation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PageNation-objects as value to a dart map
  static Map<String, List<PageNation>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageNation>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PageNation.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

