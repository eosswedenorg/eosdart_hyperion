import 'package:json_annotation/json_annotation.dart';

part 'transaction_data.g.dart';

@JsonSerializable()
class TransactionData {
  final String from;

  final String to;

  final double amount;

  final String symbol;

  final String memo;

  final String quantity;

  TransactionData(
      this.from, this.to, this.amount, this.symbol, this.memo, this.quantity);

  static const fromJsonFactory = _$TransactionDataFromJson;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);

  @override
  String toString() =>
      'TransactionData{from: $from, to: $to, amount: $amount, symbol: $symbol, memo: $memo, quantity: $quantity}';
}
