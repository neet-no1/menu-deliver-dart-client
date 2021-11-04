//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecideBestAnswerParam {
  /// Returns a new [DecideBestAnswerParam] instance.
  DecideBestAnswerParam({
    this.questionId,
    this.answerId,
  });

  /// 質問ID
  int questionId;

  /// 回答ID
  int answerId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DecideBestAnswerParam &&
     other.questionId == questionId &&
     other.answerId == answerId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (questionId == null ? 0 : questionId.hashCode) +
    (answerId == null ? 0 : answerId.hashCode);

  @override
  String toString() => 'DecideBestAnswerParam[questionId=$questionId, answerId=$answerId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (questionId != null) {
      json[r'questionId'] = questionId;
    }
    if (answerId != null) {
      json[r'answerId'] = answerId;
    }
    return json;
  }

  /// Returns a new [DecideBestAnswerParam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecideBestAnswerParam fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DecideBestAnswerParam(
        questionId: mapValueOfType<int>(json, r'questionId'),
        answerId: mapValueOfType<int>(json, r'answerId'),
      );
    }
    return null;
  }

  static List<DecideBestAnswerParam> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DecideBestAnswerParam.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DecideBestAnswerParam>[];

  static Map<String, DecideBestAnswerParam> mapFromJson(dynamic json) {
    final map = <String, DecideBestAnswerParam>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DecideBestAnswerParam.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DecideBestAnswerParam-objects as value to a dart map
  static Map<String, List<DecideBestAnswerParam>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DecideBestAnswerParam>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DecideBestAnswerParam.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

