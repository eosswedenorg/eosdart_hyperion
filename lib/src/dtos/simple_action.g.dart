// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleAction> _$simpleActionSerializer =
    new _$SimpleActionSerializer();

class _$SimpleActionSerializer implements StructuredSerializer<SimpleAction> {
  @override
  final Iterable<Type> types = const [SimpleAction, _$SimpleAction];
  @override
  final String wireName = 'SimpleAction';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleAction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'block',
      serializers.serialize(object.block, specifiedType: const FullType(int)),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(String)),
      'irreversible',
      serializers.serialize(object.irreversible,
          specifiedType: const FullType(bool)),
      'contract',
      serializers.serialize(object.contract,
          specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
      'actors',
      serializers.serialize(object.actors,
          specifiedType: const FullType(String)),
      'notified',
      serializers.serialize(object.notified,
          specifiedType: const FullType(String)),
      'transaction_id',
      serializers.serialize(object.transaction_id,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(TransactionData)),
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
  SimpleAction deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleActionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'block':
          result.block = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'irreversible':
          result.irreversible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'contract':
          result.contract = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actors':
          result.actors = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notified':
          result.notified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_id':
          result.transaction_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransactionData))
              as TransactionData);
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

class _$SimpleAction extends SimpleAction {
  @override
  final int block;
  @override
  final String timestamp;
  @override
  final bool irreversible;
  @override
  final String contract;
  @override
  final String action;
  @override
  final String actors;
  @override
  final String notified;
  @override
  final String transaction_id;
  @override
  final TransactionData data;
  @override
  final BuiltList<Action> actions;
  @override
  final BuiltList<SimpleAction> simpleActions;

  factory _$SimpleAction([void Function(SimpleActionBuilder) updates]) =>
      (new SimpleActionBuilder()..update(updates)).build();

  _$SimpleAction._(
      {this.block,
      this.timestamp,
      this.irreversible,
      this.contract,
      this.action,
      this.actors,
      this.notified,
      this.transaction_id,
      this.data,
      this.actions,
      this.simpleActions})
      : super._() {
    if (block == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'block');
    }
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'timestamp');
    }
    if (irreversible == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'irreversible');
    }
    if (contract == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'contract');
    }
    if (action == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'action');
    }
    if (actors == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'actors');
    }
    if (notified == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'notified');
    }
    if (transaction_id == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'transaction_id');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('SimpleAction', 'data');
    }
  }

  @override
  SimpleAction rebuild(void Function(SimpleActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleActionBuilder toBuilder() => new SimpleActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleAction &&
        block == other.block &&
        timestamp == other.timestamp &&
        irreversible == other.irreversible &&
        contract == other.contract &&
        action == other.action &&
        actors == other.actors &&
        notified == other.notified &&
        transaction_id == other.transaction_id &&
        data == other.data &&
        actions == other.actions &&
        simpleActions == other.simpleActions;
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
                                        $jc($jc(0, block.hashCode),
                                            timestamp.hashCode),
                                        irreversible.hashCode),
                                    contract.hashCode),
                                action.hashCode),
                            actors.hashCode),
                        notified.hashCode),
                    transaction_id.hashCode),
                data.hashCode),
            actions.hashCode),
        simpleActions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleAction')
          ..add('block', block)
          ..add('timestamp', timestamp)
          ..add('irreversible', irreversible)
          ..add('contract', contract)
          ..add('action', action)
          ..add('actors', actors)
          ..add('notified', notified)
          ..add('transaction_id', transaction_id)
          ..add('data', data)
          ..add('actions', actions)
          ..add('simpleActions', simpleActions))
        .toString();
  }
}

class SimpleActionBuilder
    implements Builder<SimpleAction, SimpleActionBuilder> {
  _$SimpleAction _$v;

  int _block;
  int get block => _$this._block;
  set block(int block) => _$this._block = block;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  bool _irreversible;
  bool get irreversible => _$this._irreversible;
  set irreversible(bool irreversible) => _$this._irreversible = irreversible;

  String _contract;
  String get contract => _$this._contract;
  set contract(String contract) => _$this._contract = contract;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _actors;
  String get actors => _$this._actors;
  set actors(String actors) => _$this._actors = actors;

  String _notified;
  String get notified => _$this._notified;
  set notified(String notified) => _$this._notified = notified;

  String _transaction_id;
  String get transaction_id => _$this._transaction_id;
  set transaction_id(String transaction_id) =>
      _$this._transaction_id = transaction_id;

  TransactionDataBuilder _data;
  TransactionDataBuilder get data =>
      _$this._data ??= new TransactionDataBuilder();
  set data(TransactionDataBuilder data) => _$this._data = data;

  ListBuilder<Action> _actions;
  ListBuilder<Action> get actions =>
      _$this._actions ??= new ListBuilder<Action>();
  set actions(ListBuilder<Action> actions) => _$this._actions = actions;

  ListBuilder<SimpleAction> _simpleActions;
  ListBuilder<SimpleAction> get simpleActions =>
      _$this._simpleActions ??= new ListBuilder<SimpleAction>();
  set simpleActions(ListBuilder<SimpleAction> simpleActions) =>
      _$this._simpleActions = simpleActions;

  SimpleActionBuilder();

  SimpleActionBuilder get _$this {
    if (_$v != null) {
      _block = _$v.block;
      _timestamp = _$v.timestamp;
      _irreversible = _$v.irreversible;
      _contract = _$v.contract;
      _action = _$v.action;
      _actors = _$v.actors;
      _notified = _$v.notified;
      _transaction_id = _$v.transaction_id;
      _data = _$v.data?.toBuilder();
      _actions = _$v.actions?.toBuilder();
      _simpleActions = _$v.simpleActions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleAction other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleAction;
  }

  @override
  void update(void Function(SimpleActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleAction build() {
    _$SimpleAction _$result;
    try {
      _$result = _$v ??
          new _$SimpleAction._(
              block: block,
              timestamp: timestamp,
              irreversible: irreversible,
              contract: contract,
              action: action,
              actors: actors,
              notified: notified,
              transaction_id: transaction_id,
              data: data.build(),
              actions: _actions?.build(),
              simpleActions: _simpleActions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'actions';
        _actions?.build();
        _$failedField = 'simpleActions';
        _simpleActions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SimpleAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
