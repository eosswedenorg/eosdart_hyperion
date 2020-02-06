// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Action> _$actionSerializer = new _$ActionSerializer();

class _$ActionSerializer implements StructuredSerializer<Action> {
  @override
  final Iterable<Type> types = const [Action, _$Action];
  @override
  final String wireName = 'Action';

  @override
  Iterable<Object> serialize(Serializers serializers, Action object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Action deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new ActionBuilder().build();
  }
}

class _$Action extends Action {
  factory _$Action([void Function(ActionBuilder) updates]) =>
      (new ActionBuilder()..update(updates)).build();

  _$Action._() : super._();

  @override
  Action rebuild(void Function(ActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionBuilder toBuilder() => new ActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Action;
  }

  @override
  int get hashCode {
    return 632094475;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Action').toString();
  }
}

class ActionBuilder implements Builder<Action, ActionBuilder> {
  _$Action _$v;

  ActionBuilder();

  @override
  void replace(Action other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Action;
  }

  @override
  void update(void Function(ActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Action build() {
    final _$result = _$v ?? new _$Action._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
