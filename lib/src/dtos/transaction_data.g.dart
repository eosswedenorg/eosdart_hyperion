// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionData> _$transactionDataSerializer =
    new _$TransactionDataSerializer();

class _$TransactionDataSerializer
    implements StructuredSerializer<TransactionData> {
  @override
  final Iterable<Type> types = const [TransactionData, _$TransactionData];
  @override
  final String wireName = 'TransactionData';

  @override
  Iterable<Object> serialize(Serializers serializers, TransactionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to, specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(double)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'memo',
      serializers.serialize(object.memo, specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TransactionData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionData extends TransactionData {
  @override
  final String from;
  @override
  final String to;
  @override
  final double amount;
  @override
  final String symbol;
  @override
  final String memo;
  @override
  final String quantity;

  factory _$TransactionData([void Function(TransactionDataBuilder) updates]) =>
      (new TransactionDataBuilder()..update(updates)).build();

  _$TransactionData._(
      {this.from, this.to, this.amount, this.symbol, this.memo, this.quantity})
      : super._() {
    if (from == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'from');
    }
    if (to == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'to');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'amount');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'symbol');
    }
    if (memo == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'memo');
    }
    if (quantity == null) {
      throw new BuiltValueNullFieldError('TransactionData', 'quantity');
    }
  }

  @override
  TransactionData rebuild(void Function(TransactionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionDataBuilder toBuilder() =>
      new TransactionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionData &&
        from == other.from &&
        to == other.to &&
        amount == other.amount &&
        symbol == other.symbol &&
        memo == other.memo &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, from.hashCode), to.hashCode), amount.hashCode),
                symbol.hashCode),
            memo.hashCode),
        quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionData')
          ..add('from', from)
          ..add('to', to)
          ..add('amount', amount)
          ..add('symbol', symbol)
          ..add('memo', memo)
          ..add('quantity', quantity))
        .toString();
  }
}

class TransactionDataBuilder
    implements Builder<TransactionData, TransactionDataBuilder> {
  _$TransactionData _$v;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  String _memo;
  String get memo => _$this._memo;
  set memo(String memo) => _$this._memo = memo;

  String _quantity;
  String get quantity => _$this._quantity;
  set quantity(String quantity) => _$this._quantity = quantity;

  TransactionDataBuilder();

  TransactionDataBuilder get _$this {
    if (_$v != null) {
      _from = _$v.from;
      _to = _$v.to;
      _amount = _$v.amount;
      _symbol = _$v.symbol;
      _memo = _$v.memo;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TransactionData;
  }

  @override
  void update(void Function(TransactionDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionData build() {
    final _$result = _$v ??
        new _$TransactionData._(
            from: from,
            to: to,
            amount: amount,
            symbol: symbol,
            memo: memo,
            quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
