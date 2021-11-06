// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decide_best_answer_param.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DecideBestAnswerParam extends DecideBestAnswerParam {
  @override
  final int? questionId;
  @override
  final int? answerId;

  factory _$DecideBestAnswerParam(
          [void Function(DecideBestAnswerParamBuilder)? updates]) =>
      (new DecideBestAnswerParamBuilder()..update(updates)).build();

  _$DecideBestAnswerParam._({this.questionId, this.answerId}) : super._();

  @override
  DecideBestAnswerParam rebuild(
          void Function(DecideBestAnswerParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecideBestAnswerParamBuilder toBuilder() =>
      new DecideBestAnswerParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecideBestAnswerParam &&
        questionId == other.questionId &&
        answerId == other.answerId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, questionId.hashCode), answerId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DecideBestAnswerParam')
          ..add('questionId', questionId)
          ..add('answerId', answerId))
        .toString();
  }
}

class DecideBestAnswerParamBuilder
    implements Builder<DecideBestAnswerParam, DecideBestAnswerParamBuilder> {
  _$DecideBestAnswerParam? _$v;

  int? _questionId;
  int? get questionId => _$this._questionId;
  set questionId(int? questionId) => _$this._questionId = questionId;

  int? _answerId;
  int? get answerId => _$this._answerId;
  set answerId(int? answerId) => _$this._answerId = answerId;

  DecideBestAnswerParamBuilder() {
    DecideBestAnswerParam._defaults(this);
  }

  DecideBestAnswerParamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _answerId = $v.answerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecideBestAnswerParam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecideBestAnswerParam;
  }

  @override
  void update(void Function(DecideBestAnswerParamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DecideBestAnswerParam build() {
    final _$result = _$v ??
        new _$DecideBestAnswerParam._(
            questionId: questionId, answerId: answerId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
