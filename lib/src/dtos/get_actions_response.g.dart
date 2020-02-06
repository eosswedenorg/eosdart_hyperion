// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_actions_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetActionsResponse> _$getActionsResponseSerializer =
    new _$GetActionsResponseSerializer();

class _$GetActionsResponseSerializer
    implements StructuredSerializer<GetActionsResponse> {
  @override
  final Iterable<Type> types = const [GetActionsResponse, _$GetActionsResponse];
  @override
  final String wireName = 'GetActionsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GetActionsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'query_time',
      serializers.serialize(object.query_time,
          specifiedType: const FullType(int)),
      'cached',
      serializers.serialize(object.cached, specifiedType: const FullType(bool)),
      'lib',
      serializers.serialize(object.lib, specifiedType: const FullType(int)),
    ];
    if (object.actions != null) {
      result
        ..add('actions')
        ..add(serializers.serialize(object.actions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Action)])));
    }
    if (object.simpleActions != null) {
      result
        ..add('simple_actions')
        ..add(serializers.serialize(object.simpleActions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SimpleAction)])));
    }
    return result;
  }

  @override
  GetActionsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetActionsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'query_time':
          result.query_time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cached':
          result.cached = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'lib':
          result.lib = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'actions':
          result.actions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Action)]))
              as BuiltList<dynamic>);
          break;
        case 'simple_actions':
          result.simpleActions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleAction)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetActionsResponse extends GetActionsResponse {
  @override
  final int query_time;
  @override
  final bool cached;
  @override
  final int lib;
  @override
  final BuiltList<Action> actions;
  @override
  final BuiltList<SimpleAction> simpleActions;

  factory _$GetActionsResponse(
          [void Function(GetActionsResponseBuilder) updates]) =>
      (new GetActionsResponseBuilder()..update(updates)).build();

  _$GetActionsResponse._(
      {this.query_time,
      this.cached,
      this.lib,
      this.actions,
      this.simpleActions})
      : super._() {
    if (query_time == null) {
      throw new BuiltValueNullFieldError('GetActionsResponse', 'query_time');
    }
    if (cached == null) {
      throw new BuiltValueNullFieldError('GetActionsResponse', 'cached');
    }
    if (lib == null) {
      throw new BuiltValueNullFieldError('GetActionsResponse', 'lib');
    }
  }

  @override
  GetActionsResponse rebuild(
          void Function(GetActionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetActionsResponseBuilder toBuilder() =>
      new GetActionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetActionsResponse &&
        query_time == other.query_time &&
        cached == other.cached &&
        lib == other.lib &&
        actions == other.actions &&
        simpleActions == other.simpleActions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, query_time.hashCode), cached.hashCode),
                lib.hashCode),
            actions.hashCode),
        simpleActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetActionsResponse')
          ..add('query_time', query_time)
          ..add('cached', cached)
          ..add('lib', lib)
          ..add('actions', actions)
          ..add('simpleActions', simpleActions))
        .toString();
  }
}

class GetActionsResponseBuilder
    implements Builder<GetActionsResponse, GetActionsResponseBuilder> {
  _$GetActionsResponse _$v;

  int _query_time;
  int get query_time => _$this._query_time;
  set query_time(int query_time) => _$this._query_time = query_time;

  bool _cached;
  bool get cached => _$this._cached;
  set cached(bool cached) => _$this._cached = cached;

  int _lib;
  int get lib => _$this._lib;
  set lib(int lib) => _$this._lib = lib;

  ListBuilder<Action> _actions;
  ListBuilder<Action> get actions =>
      _$this._actions ??= new ListBuilder<Action>();
  set actions(ListBuilder<Action> actions) => _$this._actions = actions;

  ListBuilder<SimpleAction> _simpleActions;
  ListBuilder<SimpleAction> get simpleActions =>
      _$this._simpleActions ??= new ListBuilder<SimpleAction>();
  set simpleActions(ListBuilder<SimpleAction> simpleActions) =>
      _$this._simpleActions = simpleActions;

  GetActionsResponseBuilder();

  GetActionsResponseBuilder get _$this {
    if (_$v != null) {
      _query_time = _$v.query_time;
      _cached = _$v.cached;
      _lib = _$v.lib;
      _actions = _$v.actions?.toBuilder();
      _simpleActions = _$v.simpleActions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetActionsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetActionsResponse;
  }

  @override
  void update(void Function(GetActionsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetActionsResponse build() {
    _$GetActionsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetActionsResponse._(
              query_time: query_time,
              cached: cached,
              lib: lib,
              actions: _actions?.build(),
              simpleActions: _simpleActions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'actions';
        _actions?.build();
        _$failedField = 'simpleActions';
        _simpleActions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetActionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
